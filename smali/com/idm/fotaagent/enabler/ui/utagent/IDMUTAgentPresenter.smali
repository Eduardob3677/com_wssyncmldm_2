.class public Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$Presenter;


# instance fields
.field private repository:Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;

.field private view:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->view:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->repository:Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;

    invoke-interface {p1, p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;->idmSetPresenter(Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$Presenter;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->lambda$idmCreatePreferenceClickListener$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private idmCreateDevicePreferenceSummary()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->repository:Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;->idmGetDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->repository:Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;

    invoke-interface {v2}, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;->idmGetVersionInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->repository:Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;->idmGetPollingTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmCreatePreferenceClickListener()Landroidx/preference/o;
    .locals 1

    new-instance v0, LB2/a;

    invoke-direct {v0, p0}, LB2/a;-><init>(Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;)V

    return-object v0
.end method

.method private lambda$idmCreatePreferenceClickListener$0(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p1, p1, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "localtest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UpdateUTSoftware"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Unexpected preference : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->updateSoftware()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->startLocalTest()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private startLocalTest()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->repository:Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;->startLocalTest()V

    return-void
.end method

.method private updateSoftware()V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByUser()Z

    return-void
.end method


# virtual methods
.method public idmStart()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->view:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->idmCreatePreferenceClickListener()Landroidx/preference/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;->idmSetUpdatePreferenceClickListener(Landroidx/preference/o;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->view:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->idmCreateDevicePreferenceSummary()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;->idmSetDevicePreferenceSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->view:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentPresenter;->idmCreatePreferenceClickListener()Landroidx/preference/o;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;->setLocaltestPreferenceClickListener(Landroidx/preference/o;)V

    return-void
.end method
