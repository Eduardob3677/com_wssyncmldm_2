.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Windowed;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Windowed"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoRestart;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoRestart;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Windowed;-><init>()V

    return-void
.end method


# virtual methods
.method public doApply()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->policyTimer:Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->restart()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->applyPolicyOrPolling()V

    return-void
.end method

.method public promptInstallAfterTimerExpired()V
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->setAutoInstall(Z)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByUser()Z

    return-void
.end method
