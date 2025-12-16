.class public abstract Lcom/idm/fotaagent/scheduler/DmSessionStarter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/scheduler/FumoInitiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/DmSessionStarter$ServerInit;,
        Lcom/idm/fotaagent/scheduler/DmSessionStarter$UserInit;,
        Lcom/idm/fotaagent/scheduler/DmSessionStarter$DeviceInit;
    }
.end annotation


# instance fields
.field final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field final context:Landroid/content/Context;

.field final sessionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->sessionId:Ljava/lang/String;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static forScheduleType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DmSessionStarter;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;->$SwitchMap$com$idm$fotaagent$scheduler$interfaces$IDMSchedulerInterface$IDM_SCHEDULE_TYPE:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected scheduleType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " handle as "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_USERINIT:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter$UserInit;

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/scheduler/DmSessionStarter$UserInit;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter$DeviceInit;

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/scheduler/DmSessionStarter$DeviceInit;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter$UserInit;

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/scheduler/DmSessionStarter$UserInit;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter$ServerInit;

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/scheduler/DmSessionStarter$ServerInit;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/scheduler/DmSessionStarter$1;)V

    return-object p0
.end method


# virtual methods
.method public abstract checkInitType()V
.end method

.method public execute()V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->checkInitType()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->setUiMode()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->showUiFor(Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_SCHEDULE_FINISH:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->sessionId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    return-void

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;->PROCESSING:Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendFotaStatus(Lcom/idm/fotaagent/enabler/fumo/IntentManager$ResultStatus;)V

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setIsContinuousUpdateSession(Z)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->showUiForDmConnecting()V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_FAIL_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;)V

    const-string v0, ">>>>>>>>>>   DM Session Start   <<<<<<<<<<"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/LibraryStarter;->startDMTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    return-void
.end method

.method public abstract setUiMode()V
.end method

.method public showUiFor(Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;)V
    .locals 0

    return-void
.end method

.method public showUiForDmConnecting()V
    .locals 0

    return-void
.end method
