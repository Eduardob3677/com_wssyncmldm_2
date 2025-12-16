.class Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$2;
.super Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public doExecute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getUserInitResume(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/UserInitResume;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/UserInitResume;->execute()V

    return-void
.end method
