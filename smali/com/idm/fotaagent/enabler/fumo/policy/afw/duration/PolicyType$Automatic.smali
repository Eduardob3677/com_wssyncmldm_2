.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Automatic;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Automatic"
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

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Automatic;-><init>()V

    return-void
.end method


# virtual methods
.method public doApply()V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->applyPolicyOrPolling()V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->clearVersionAndExpiredTime()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->policyTimer:Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->stop()V

    return-void
.end method
