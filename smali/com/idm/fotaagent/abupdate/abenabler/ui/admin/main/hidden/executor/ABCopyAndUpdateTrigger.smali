.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABCopyAndUpdateTrigger;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private changePermissionTo644()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->dstPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public startUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    const-string v1, "Start to update"

    invoke-static {v0, v1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABCopyAndUpdateTrigger;->changePermissionTo644()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->initializeUpdateResult()V

    const-string v0, "Download and install will be started"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->applyPayload(J)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->taskId:Ljava/lang/String;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->start(Ljava/lang/String;)V

    return-void

    :catch_0
    const-string v0, "Failed to change permission to 644"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    const-string v0, "Failed to localtest"

    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteEnablerEntitiesAndResetFumoExtMo()V

    return-void
.end method
