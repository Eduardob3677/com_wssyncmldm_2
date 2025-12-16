.class public Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final context:Landroid/content/Context;

.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    return-void
.end method

.method private getScreenId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "005"

    goto :goto_0

    :cond_0
    const-string p0, "006"

    :goto_0
    return-object p0
.end method

.method private isForceDownload()Z
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isLiveDemoDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    invoke-direct {v2, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getDownloadType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;->Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isForceDownloadOrAfWAutomatic()Z
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->isForceDownload()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->isAutomaticBehavior()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isImportantUpdate()Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getUpdateType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->Important:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 3

    const-string v0, "cancel by later"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0071"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 p0, 0xe6

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(II)V

    return-void
.end method

.method public cancelNetworkResume()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->cancel(Landroid/content/Context;)V

    return-void
.end method

.method public getHighEmphasisButtonTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getDownloadConfirmHighEmphasisButtonTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainBody()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyByDevice()Z

    move-result v0

    const v1, 0x7f130038

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    sget-object v2, Lcom/idm/fotaagent/enabler/feature/Operator;->KOO:Lcom/idm/fotaagent/enabler/feature/Operator;

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;

    move-result-object v0

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->isWifiOnlyForDl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    const v0, 0x7f130036

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isShowMobileNetworkWarning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/FloatingFeature;->isMHSDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    const v0, 0x7f130037

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->isImportantUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getDownloadConfirmImportantTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getDownloadConfirmTitleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediumEmphasisButtonTitle()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->isForceDownloadOrAfWAutomatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    const v0, 0x7f130014

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public postponeIfNeeded()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "already postponed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->isForceDownloadOrAfWAutomatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "postpone implicitly: force download or automatic"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Download$PeriodicRemind;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Download$PeriodicRemind;-><init>()V

    sget-object v1, Lcom/idm/fotaagent/utils/EpochTime;->HOUR_3_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/EpochTime;->toMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public scheduleNetworkResumeIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/idm/fotaagent/database/sqlite/database/settings/SettingsDatabaseManager;->getAutoDownloadOption(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->scheduleWithWifiOnly(Landroid/content/Context;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->isShowMobileNetworkWarning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->scheduleWithLatencyMobileOnly(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public startDownload()V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0006"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmModel;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->fumoStartIfPossible()V

    return-void
.end method
