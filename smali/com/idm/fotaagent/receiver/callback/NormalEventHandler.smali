.class Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;
.super Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private extractExecInfoFrom(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/idm/agent/dm/IDMDmExecInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/idm/agent/dm/IDMDmExecInfo;

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private extractReportUrlFrom(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private finish()V
    .locals 2

    const/16 v0, 0xf1

    const/16 v1, 0x50

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->reportToDiagmonIfNeeded(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->context:Landroid/content/Context;

    sget-object v1, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->REPORT_SUCCESS:Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;->addStatusIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->reportToSAIfNeeded()V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmFinish;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmFinish;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void
.end method

.method private finishAndExecute(Ljava/util/ArrayList;Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;->extractExecInfoFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;->extractReportUrlFrom(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->setLastCheckedDateAndSendIntent()V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "delete taskid\'s IDMDmExecInfo with report url"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteExecInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;->saveExecInfo(Ljava/util/List;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-virtual {p2, p3, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    return-void

    :goto_4
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method private saveExecInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/idm/agent/dm/IDMDmExecInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p0, "dmExecInfos should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/idm/agent/dm/IDMDmExecInfo;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->insertExecInfo(Lcom/idm/agent/dm/IDMDmExecInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public doHandle(ILjava/lang/Object;I)V
    .locals 4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_f

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_b

    const/16 v0, 0x23

    if-eq p1, v0, :cond_9

    const/16 p3, 0x28

    if-eq p1, p3, :cond_8

    const/16 p3, 0xf0

    if-eq p1, p3, :cond_6

    const/16 p3, 0xf2

    if-eq p1, p3, :cond_5

    const/16 p3, 0x3f2

    if-eq p1, p3, :cond_4

    const/16 p3, 0x3f5

    if-eq p1, p3, :cond_2

    const/16 p2, 0x3f6

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSuCancel()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmFinish;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDmFinish;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivities()V

    return-void

    :cond_2
    instance-of p3, p2, Ljava/util/ArrayList;

    if-eqz p3, :cond_3

    check-cast p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0, p2, p3, p1}, Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;->finishAndExecute(Ljava/util/ArrayList;Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;I)V

    return-void

    :cond_3
    const-string p0, "data should exist"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;->finish()V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-virtual {p2, p1, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    sget-object p1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p3, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSuCancel()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivities()V

    :cond_7
    sget-object p3, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SYNC_DM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v0, 0x4

    invoke-direct {p3, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    return-void

    :cond_8
    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v0, 0x4

    invoke-direct {p3, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    return-void

    :cond_9
    const/4 v0, 0x1

    if-ne p3, v0, :cond_a

    iget-object p3, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result p3

    if-ne p3, v0, :cond_a

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p3

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_DOWNLOADED_DELTA_INVALID:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p3, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    :cond_a
    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v0, 0x4

    invoke-direct {p3, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    return-void

    :cond_b
    iget-object p2, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-virtual {p2, p1, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;

    iget-object p2, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->restoreLastInformation()V

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadInProgress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void

    :cond_c
    iget-object p3, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlReportCode()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_d

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p3

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object v3, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    goto :goto_0

    :cond_d
    iget-object p3, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDlReportCode()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_e

    new-instance p3, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailed;

    iget-object v0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p3, v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    :cond_e
    :goto_0
    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v0, 0x4

    invoke-direct {p3, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->callbackIfPossible(ILjava/lang/String;)V

    return-void

    :cond_f
    instance-of p1, p2, Lcom/idm/core/dd/IDMDDDataInfo;

    if-eqz p1, :cond_10

    check-cast p2, Lcom/idm/core/dd/IDMDDDataInfo;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeCallbackForDDIfPossible(Lcom/idm/core/dd/IDMDDDataInfo;)V

    return-void

    :cond_10
    const-string p1, "ddData should exist"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->executeHandler:Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    const/4 p2, 0x6

    invoke-static {p2}, Lcom/idm/fotaagent/utils/EnablerUtils;->convertDlResultCodeToDmResultCode(I)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xf1

    invoke-virtual {p1, p3, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailed;

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskDownloadFailed;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void
.end method
