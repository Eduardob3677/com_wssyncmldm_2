.class public Lcom/idm/fotaagent/abupdate/abenabler/fumo/ABUserInitResume;
.super Lcom/idm/fotaagent/enabler/fumo/UserInitResume;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setUiMode(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v0

    const-string v1, "fumoStatus: "

    invoke-static {v1, v0}, LB/f;->D(Ljava/lang/String;I)V

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const-string v1, "AB resume"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->taskId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->fumoStartIfPossible(I)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->execute()V

    return-void
.end method

.method public needsNetwork()Z
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->needsNetwork()Z

    move-result p0

    return p0
.end method
