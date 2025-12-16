.class Lcom/idm/fotaagent/InitExecutor$ResetTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/InitExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/InitExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;-><init>()V

    return-void
.end method

.method private checkInitializationAllowed()V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/utils/RebootChecker;->waitsReboot()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/utils/RebootChecker$RebootRequiredException;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/RebootChecker$RebootRequiredException;-><init>()V

    throw p0
.end method

.method private deleteFilesIfExists()V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->deleteDeltaAndMetadataFiles()V

    return-void
.end method

.method private scheduleRegistrationIfNeeded()V
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isUnregistered()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "schedule re-registering"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->access$600()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->FOTA_AGENT:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->scheduleDeviceRegistrationIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->clear()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->initialize()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public clear()V
    .locals 9

    const-string v0, "Clearing device starts"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setResetTaskStatusAsStarted()V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/idm/fotaagent/InitExecutor;->access$702(Lcom/idm/fotaagent/InitExecutor;Z)Z

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishAllActivities()V

    invoke-direct {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->deleteFilesIfExists()V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->resetManagedObjectDB()V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->resetEnablerDB()V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->access$600()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository;-><init>(Landroid/content/Context;)V

    const-string v7, "Campaign"

    const-string v8, "DeviceRegistration"

    const-string v2, "Admin"

    const-string v3, "RegisteredDevice"

    const-string v4, "InstallParam"

    const-string v5, "DmNotification"

    const-string v6, "Postpone"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository;->deleteCategories([Ljava/lang/String;)V

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->deleteAll()V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->deleteAll()I

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancelAll()V

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->cancel()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->stop()V

    invoke-static {}, Lcom/idm/fotaagent/utils/GeneralUtils;->resetBadgeAndPendingAfWSystemUpdate()V

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->disableFirstNetInstall(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->resetUpdateEngine()V

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setResetTaskStatusAsFinished()V

    const-string p0, "Clearing device ends"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public initialize()V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->checkInitializationAllowed()V

    const-string v0, ">>>>>>>>>>   Initialization starts   <<<<<<<<<<"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/tool/ddf/DDFManager;

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isUserShipBinary()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->execute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->bind()V

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register()V

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->get()Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->configFcmAutoInit()V

    invoke-direct {p0}, Lcom/idm/fotaagent/InitExecutor$ResetTask;->scheduleRegistrationIfNeeded()V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/idm/fotaagent/InitExecutor;->access$702(Lcom/idm/fotaagent/InitExecutor;Z)Z

    const-string p0, ">>>>>>>>>>   Initialization ends   <<<<<<<<<<"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method
