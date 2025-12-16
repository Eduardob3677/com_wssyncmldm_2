.class public Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final ACTION_SUW_COMPLETE_FOR_MAJOR_UPDATE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

.field private static final SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->lambda$handle$1()V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->lambda$handle$0()V

    return-void
.end method

.method private synthetic lambda$handle$0()V
    .locals 1

    const-class v0, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->handleActionBootCompletedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$handle$1()V
    .locals 1

    const-class v0, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->handleSimStateChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startPollingIfNeeded(J)V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->getNextTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set polling timer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;

    invoke-direct {v3, v0, v1}, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const-string p1, "polling time has passed. start polling"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->stopPolling()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->POLLING:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDelayedByLockLogIfNeeded(Landroid/content/Context;)V
    .locals 4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "elapsedRealtime : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->REPORT_DELAYED_BY_LOCK:Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;

    invoke-static {p1, p0}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;->addStatusIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V

    :cond_0
    return-void
.end method

.method public getSimState()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "ss"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handle()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receive broadcast message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string p0, "unexpected action"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_INTENT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v1, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->BOOT_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    :cond_7
    return-void

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->startPollingIfNeeded(J)V

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->updatePostponeIfNeeded(J)V

    return-void

    :pswitch_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->applyIfPolicyChanged()V

    return-void

    :pswitch_3
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->updatePropertiesDependingOnLocale()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->renotifyAll()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->resumeCampaignNotification(Landroid/content/Context;)V

    return-void

    :pswitch_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/idm/fotaagent/receiver/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/receiver/a;-><init>(Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    :pswitch_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/idm/fotaagent/receiver/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/receiver/a;-><init>(Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1f3166b5 -> :sswitch_6
        -0xdb21ee7 -> :sswitch_5
        -0x122164c -> :sswitch_4
        0x14c2a399 -> :sswitch_3
        0x1e1f7f95 -> :sswitch_2
        0x2f94f923 -> :sswitch_1
        0x6789a577 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public handleActionBootCompletedLocked()V
    .locals 6

    new-instance v0, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->BOOT_COMPLETE:Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->scheduleDeviceRegistrationIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->resumeCampaignNotification(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->restartTimers(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_INTENT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v3, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->BOOT_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->addDelayedByLockLogIfNeeded(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public handleSimStateChangedLocked()V
    .locals 3

    invoke-virtual {p0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->getSimState()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "simState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->updateIfFirstNet()V

    :cond_0
    return-void
.end method

.method public restartTimers(Landroid/content/Context;)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeatManager;->restartIfPossible()V

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->restartPolling()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->start()V

    return-void
.end method

.method public resumeCampaignNotification(Landroid/content/Context;)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->notifyNotification()V

    return-void
.end method

.method public updatePostponeIfNeeded(J)V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isUpdatingFumoStatus()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isNone()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->alarmTime()J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-gez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeType()Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->updateWithin24h(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
