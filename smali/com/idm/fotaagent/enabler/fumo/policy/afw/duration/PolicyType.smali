.class public abstract Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Automatic;,
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Windowed;,
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Postpone;,
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Default;
    }
.end annotation


# instance fields
.field protected final policyTimer:Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->policyTimer:Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    return-void
.end method

.method public static synthetic access$400()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getPolicyType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Default;

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Default;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Postpone;

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Postpone;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Windowed;

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Windowed;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Automatic;

    invoke-direct {v0, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Automatic;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyPolicyOrPolling()V
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/service/actioninfo/IDMActionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetFumoStatus()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByDevice()V

    :goto_0
    return-void
.end method

.method public abstract doApply()V
.end method

.method public getTimer()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->policyTimer:Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    return-object p0
.end method

.method public promptInstallAfterTimerExpired()V
    .locals 0

    return-void
.end method
