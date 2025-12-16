.class public Lcom/idm/fotaagent/abupdate/abenabler/enablerfactory/ABEnablerFactory;
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

    const-string p0, "return AB executor - status : "

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
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadPause;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadPause;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadDescriptor;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadDescriptor;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateToReporting;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateToReporting;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$ReportDownloadResult;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$ReportDownloadResult;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_6
    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$FumoStart;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$FumoStart;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public getAdminCommandExecutor(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABAdminCommandExecutor;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/executor/ABAdminCommandExecutor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getBuilderVariant()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$BuilderVariant;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/notification/manager/ABNotificationBuilderVariant;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/notification/manager/ABNotificationBuilderVariant;-><init>()V

    return-object p0
.end method

.method public getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/ABInstallHandler;

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/abenabler/ABInstallHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/ABLibraryUtils;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/ABLibraryUtils;-><init>()V

    return-object p0
.end method

.method public getMemoryHandler(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;
    .locals 0

    invoke-static {p1, p2}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->get(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;

    move-result-object p0

    return-object p0
.end method

.method public getPostponeModel(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getUpdateScheduledDialogMessageId()I

    move-result v0

    const v1, 0x7f13000c

    invoke-direct {p0, p1, v1, v0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;-><init>(Ljava/lang/String;II)V

    return-object p0
.end method

.method public getTemperatureChecker()Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/abupdate/utils/temperature/ABTemperatureChecker;

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/utils/temperature/ABTemperatureChecker;-><init>()V

    return-object p0
.end method

.method public getUserInitResume(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/UserInitResume;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/ABUserInitResume;

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/ABUserInitResume;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0
.end method
