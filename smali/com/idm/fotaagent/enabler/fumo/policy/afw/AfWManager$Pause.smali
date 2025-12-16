.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Pause;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pause"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Default;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$1;)V

    return-void
.end method


# virtual methods
.method public checkInstallable()V
    .locals 1

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;

    const-string v0, "Out of install window (daily maintenance window)"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallSuspendedByPolicyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
