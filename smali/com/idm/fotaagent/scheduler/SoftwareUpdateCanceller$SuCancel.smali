.class public abstract Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;
.super Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SuCancel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;,
        Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Mdm;,
        Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Generic;
    }
.end annotation


# instance fields
.field final actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private final dmResultCode:Ljava/lang/String;

.field final libraryUtils:Lcom/idm/fotaagent/utils/LibraryUtils;

.field final sessionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->sessionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->dmResultCode:Ljava/lang/String;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->libraryUtils:Lcom/idm/fotaagent/utils/LibraryUtils;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowsToStartSuCancel()Z
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->sessionId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetFumoStatus()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->libraryUtils:Lcom/idm/fotaagent/utils/LibraryUtils;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    if-nez v0, :cond_2

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public execute()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v0, :cond_0

    const-string p0, "actionInfo is null. su cancel doesn\'t need to be executed."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->allowsToStartSuCancel()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "not allow to start SuCancel"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->startSuCancel()V

    return-void
.end method

.method public startSuCancel()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetSessionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetSuCancel(Z)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetFumoStatus(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->dmResultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDmResultCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const-string v1, "./FUMO/DownloadAndUpdate"

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetReportUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetInitUiMode(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetPushUiMode(I)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->replaceEntity(Ljava/lang/Object;)J

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->libraryUtils:Lcom/idm/fotaagent/utils/LibraryUtils;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->libraryUtils:Lcom/idm/fotaagent/utils/LibraryUtils;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/utils/LibraryUtils;->cancelRunningTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivities()V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setAppId(I)V

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-static {p0}, Lcom/idm/fotaagent/LibraryStarter;->startDMTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    return-void
.end method
