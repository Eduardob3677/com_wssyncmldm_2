.class public Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;
.super Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;,
        Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$AutoInstallNotAllowedException;,
        Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;
    }
.end annotation


# static fields
.field private static final INSTALL_OVERNIGHT_HOUR_FROM:I = 0x2

.field private static final INSTALL_OVERNIGHT_HOUR_TO:I = 0x6


# instance fields
.field private final afwManager:Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

.field private final context:Landroid/content/Context;

.field private final idleChecker:Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

.field private final installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

.field private final postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->context:Landroid/content/Context;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-direct {v1, p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$1;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->afwManager:Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->idleChecker:Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    return-void
.end method

.method private getOverNightScheduleTimeAsPostPoneCount(I)J
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-static {v1, p0, v0, p0}, Lcom/idm/fotaagent/utils/EpochTime;->getNextRandomlyBetween(IIII)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    int-to-long p0, p1

    sget v2, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MILLIS:I

    int-to-long v2, v2

    mul-long/2addr p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private isScheduledTimeAndAlreadyPassed()Z
    .locals 6

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->isAlreadyScheduled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "not scheduled"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->access$200(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public allowToShowInstallConfirm()Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getInitType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->shouldCountdown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->access$400(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/idm/fotaagent/utils/GeneralUtils;->isRunningOOBESmartSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->TOAST:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->idleChecker:Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->isIdle()Z

    move-result v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result p0

    if-eq p0, v3, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected uiMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", handled as BACKGROUND"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->ACTIVITY:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->TOAST:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    :goto_1
    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->ACTIVITY:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->TOAST:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    :goto_2
    return-object p0

    :cond_6
    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->ACTIVITY:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    goto :goto_3

    :cond_7
    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->TOAST:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    :goto_3
    return-object p0

    :cond_8
    sget-object p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->ACTIVITY:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    return-object p0
.end method

.method public doTaskEvent()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->updateIfFirstNet()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->cancel(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->isEmergencyService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->access$100(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;Z)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->INSTALL_CONFIRM:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForInstall;->getExceptional()Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;->act()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;->getExceptionClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->ifThrown(Ljava/util/function/Consumer;Ljava/lang/Class;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v0

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;->act()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;->getExceptionClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->ifThrown(Ljava/util/function/Consumer;Ljava/lang/Class;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/b;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/b;-><init>(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->orElse(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAutoInstall()Z
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/feature/Operator;->LGT:Lcom/idm/fotaagent/enabler/feature/Operator;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isUiccMobilityLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "uicc mobility lock enabled, no auto update"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$AutoInstallNotAllowedException;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$AutoInstallNotAllowedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/feature/Operator;->SKT:Lcom/idm/fotaagent/enabler/feature/Operator;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isRoamingNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Roaming, no auto update"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$AutoInstallNotAllowedException;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$AutoInstallNotAllowedException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->afwManager:Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->isAutomaticBehavior()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->isScheduledTimeAndAlreadyPassed()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->isUpdateWithForceAndNoPostpone()Z

    move-result p0

    return p0
.end method

.method public isUpdateWithForceAndNoPostpone()Z
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p0, "No force install type"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->isAlreadyScheduled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "schedule time already set"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->NO:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "force install but no postpone case"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public setAutoInstall()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->isAutoInstall()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->access$100(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;Z)V

    return-void
.end method

.method public setScheduleInstallTimeIfForceAndPostpone()V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p0, "No force install type"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->isAlreadyScheduled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "schedule time already set"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postponeCount : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->NO:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->installPolicy:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->maxCount()I

    move-result v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->getOverNightScheduleTimeAsPostPoneCount(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->access$300(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scheduledInstallTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->postponeRepositoryManager:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;->access$200(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$PostponeRepositoryManager;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "force install but no postpone or unlimited case"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public showInstallConfirmIfPossible()V
    .locals 4

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->setScheduleInstallTimeIfForceAndPostpone()V

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->setAutoInstall()V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$AutoInstallNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->POSTPONE_24_HOURS:Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    :goto_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->allowToShowInstallConfirm()Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uiType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/a;

    invoke-direct {v2, v1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/a;-><init>(Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;->idleChecker:Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->getPostponeReason()Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->postponeIfNeeded(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->taskId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm$UiType;->show(Ljava/lang/String;)V

    return-void
.end method
