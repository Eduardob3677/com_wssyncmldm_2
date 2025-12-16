.class public Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentCallResume;
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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doResume Call taskId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object v0

    const-class v1, Lcom/idm/fotaagent/receiver/dynamic/CallStateChangeReceiver;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->unregister(Ljava/lang/Class;)V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->execute()V

    return-void
.end method
