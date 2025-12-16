.class Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$3;
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

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;->forScheduleType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/scheduler/FumoInitiator;->execute()V

    return-void
.end method
