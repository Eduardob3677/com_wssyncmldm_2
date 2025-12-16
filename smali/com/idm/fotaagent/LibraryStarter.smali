.class public Lcom/idm/fotaagent/LibraryStarter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/LibraryStarter$IDMProviderStarter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/LibraryStarter;->lambda$startDMTask$0(Ljava/util/List;)V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$startDMTask$0(Ljava/util/List;)V
    .locals 1

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static pauseDownloading(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 1

    const-string v0, ">>>>>>>>>>   Pause   <<<<<<<<<<"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->switchFileLoggerToSession(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p0}, Lcom/idm/service/provider/IDMProviderService;->idmSendMessagePauseTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static savePreviousFirmwareVersion()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setPreviousFirmwareVersion(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized start(Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/fotaagent/LibraryStarter$IDMProviderStarter;)V
    .locals 5

    const-string v0, "started for "

    const-class v1, Lcom/idm/fotaagent/LibraryStarter;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_SYNC_DM:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    new-instance v2, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterImpl;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterImpl;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;

    invoke-direct {v3}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {p1, v4, p0, v2, v3}, Lcom/idm/fotaagent/LibraryStarter$IDMProviderStarter;->execute(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/fotaagent/enabler/adapter/IDMAdapterImpl;Lcom/idm/adapter/callback/IDMCallback;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static startDLTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 2

    const-string v0, ">>>>>>>>>>   Start DL Task   <<<<<<<<<<"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->switchFileLoggerToSession(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/idm/fotaagent/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/e;-><init>(I)V

    invoke-static {p0, v0}, Lcom/idm/fotaagent/LibraryStarter;->start(Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/fotaagent/LibraryStarter$IDMProviderStarter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static startDMTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 3

    const-string v0, ">>>>>>>>>>   Start DM Task   <<<<<<<<<<"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->switchFileLoggerToSession(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device Registration Requester : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->getRequester()I

    move-result v1

    invoke-static {v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->of(I)Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->getLimitedPostponeReasons(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;)V

    invoke-static {}, Lcom/idm/fotaagent/LibraryStarter;->savePreviousFirmwareVersion()V

    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/idm/fotaagent/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/e;-><init>(I)V

    invoke-static {p0, v0}, Lcom/idm/fotaagent/LibraryStarter;->start(Lcom/idm/service/actioninfo/IDMActionInfo;Lcom/idm/fotaagent/LibraryStarter$IDMProviderStarter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
