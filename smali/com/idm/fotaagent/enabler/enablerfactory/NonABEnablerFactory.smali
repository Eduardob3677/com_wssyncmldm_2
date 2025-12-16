.class public Lcom/idm/fotaagent/enabler/enablerfactory/NonABEnablerFactory;
.super Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public doCreateExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
    .locals 0

    const-string p0, "return Non AB executor - status : "

    invoke-static {p0, p1}, LB/f;->D(Ljava/lang/String;I)V

    const/16 p0, 0xa

    if-eq p1, p0, :cond_6

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_5

    const/16 p0, 0x23

    if-eq p1, p0, :cond_4

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_3

    const/16 p0, 0x41

    if-eq p1, p0, :cond_2

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf2

    if-eq p1, p0, :cond_0

    const-string p0, "return downloadFailed executor for abnormal status to create executor"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailed;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailed;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadPause;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadPause;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadDescriptor;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadDescriptor;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateToReporting;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateInProgress;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateInProgress;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorReportDownloadResult;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorReportDownloadResult;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_6
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public getAdminCommandExecutor(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getBuilderVariant()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$BuilderVariant;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderVariant;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderVariant;-><init>()V

    return-object p0
.end method

.method public getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/utils/LibraryUtils;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/LibraryUtils;-><init>()V

    return-object p0
.end method

.method public getMemoryHandler(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;
    .locals 0

    invoke-static {p1, p2}, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;->get(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler;

    move-result-object p0

    return-object p0
.end method

.method public getPostponeModel(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getTemperatureChecker()Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;-><init>()V

    return-object p0
.end method

.method public getUserInitResume(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/UserInitResume;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0
.end method
