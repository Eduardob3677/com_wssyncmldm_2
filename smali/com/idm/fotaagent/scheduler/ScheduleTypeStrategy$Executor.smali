.class public interface abstract Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Executor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$AbstractExecutor;
    }
.end annotation


# static fields
.field public static final DM_SESSION_STARTER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

.field public static final SOFTWARE_UPDATE_CANCELLER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

.field public static final USER_INIT_RESUMER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$1;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$1;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;->DM_SESSION_STARTER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    new-instance v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$2;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$2;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;->USER_INIT_RESUMER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    new-instance v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$3;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor$3;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;->SOFTWARE_UPDATE_CANCELLER:Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$Executor;

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)V
.end method
