.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Default;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoNotRestart;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoNotRestart;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public doApply()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->isScheduleForceOrPolicyWindowed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v2, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x32

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->setAutoInstall(Z)V

    :cond_1
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->clearVersionAndExpiredTime()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->policyTimer:Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->stop()V

    return-void
.end method
