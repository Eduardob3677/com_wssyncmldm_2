.class public Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;
.super Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Generic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrReset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset$BySessionExpiration;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Generic;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Generic;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v0, :cond_0

    const-string p0, "actionInfo is null. su cancel need not be executed."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->allowsToStartSuCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->startSuCancel()V

    return-void

    :cond_1
    const-string v0, "allowsToStartSuCancel : false"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;->reset()V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->libraryUtils:Lcom/idm/fotaagent/utils/LibraryUtils;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/utils/LibraryUtils;->isTaskRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ongoing DM or DL thread exists"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->libraryUtils:Lcom/idm/fotaagent/utils/LibraryUtils;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/utils/LibraryUtils;->cancelRunningTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    :cond_0
    const-string p0, "reset and do not report"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivities()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancelAll()V

    invoke-static {}, Lcom/idm/fotaagent/utils/GeneralUtils;->resetBadgeAndPendingAfWSystemUpdate()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    new-instance p0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteDeltaAndMetadataFiles()V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->resetUpdateEngine()V

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteAllEntities()I

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteEnablerEntitiesAndResetFumoExtMo()V

    return-void
.end method
