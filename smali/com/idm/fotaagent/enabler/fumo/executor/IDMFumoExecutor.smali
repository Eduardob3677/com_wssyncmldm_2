.class public abstract Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;,
        Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;
    }
.end annotation


# instance fields
.field protected final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field protected final context:Landroid/content/Context;

.field protected final taskId:Ljava/lang/String;

.field private final updater:Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->taskId:Ljava/lang/String;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updater:Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->lambda$updateInformation$0(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;)V

    return-void
.end method

.method private synthetic lambda$updateInformation$0(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->context:Landroid/content/Context;

    invoke-interface {p2, p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;->update(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getDefaultResultCode()Ljava/lang/String;
.end method

.method public abstract idmCallbackExecute(Ljava/lang/String;)V
.end method

.method public abstract idmExecute(Ljava/lang/String;)V
.end method

.method public abstract idmFumoStart()V
.end method

.method public resumeByBattery()V
    .locals 0

    return-void
.end method

.method public abstract resumeByNetwork()V
.end method

.method public abstract resumeByReboot()V
.end method

.method public abstract updateActionInfo(Ljava/lang/String;)V
.end method

.method public updateInformation(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->getDefaultResultCode()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultCode is null. handle as : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "actionInfo is empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updateActionInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->updater:Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/executor/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/idm/fotaagent/enabler/fumo/executor/a;-><init>(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-string p0, "finished updating actionInfo"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :goto_3
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method
