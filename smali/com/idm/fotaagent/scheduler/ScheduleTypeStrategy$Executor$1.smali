.class Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$1;
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

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->forScheduleType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DmSessionStarter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/DmSessionStarter;->execute()V

    return-void
.end method
