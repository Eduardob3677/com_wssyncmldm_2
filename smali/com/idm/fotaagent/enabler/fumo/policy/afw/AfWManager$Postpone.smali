.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Postpone;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Postpone"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Default;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$1;)V

    return-void
.end method


# virtual methods
.method public checkDownloadable()V
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;

    const-string v0, "Download blocked by AfW"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public checkInstallable()V
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;

    const-string v0, "Install blocked by AfW"

    const-string v1, "461"

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
