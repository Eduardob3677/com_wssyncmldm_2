.class public Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBatteryResume;
.super Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public doResume(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "doResume Battery taskId: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/receiver/dynamic/BatteryChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->unregister(Ljava/lang/Class;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->resumeByBatteryIfPossible(I)V

    return-void
.end method
