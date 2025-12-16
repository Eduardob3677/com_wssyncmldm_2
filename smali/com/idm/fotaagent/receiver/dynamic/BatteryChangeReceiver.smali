.class public Lcom/idm/fotaagent/receiver/dynamic/BatteryChangeReceiver;
.super Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public handle()V
    .locals 4

    const-string v0, "BatteryChange Receive"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------ Current Battery Level : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "sessionId should not be null or empty string"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->get(Landroid/content/Context;)Lcom/idm/fotaagent/utils/battery/BatteryChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->isEnoughBatteryToUpdate()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->getInstance()Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;->SCHEDULE_EVENT_INTENT_RESUME:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;

    sget-object v1, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->BATTERY_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->idmSendMessage(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_EVENT;Ljava/lang/Object;J)V

    :cond_1
    return-void
.end method
