.class public abstract Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractExecutor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteScheduleAndUpdateActionInfo(JLcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "schedule index; "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(J)I

    :cond_0
    if-eqz p3, :cond_1

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0, p3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->replaceEntity(Ljava/lang/Object;)J

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->idmSaveDevInfoLog(Landroid/content/Context;)V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract doExecute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;Ljava/lang/String;)V
.end method

.method public execute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->getActionInfoFrom(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetIndex()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;->deleteScheduleAndUpdateActionInfo(JLcom/idm/service/actioninfo/IDMActionInfo;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;->doExecute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;Ljava/lang/String;)V

    return-void
.end method
