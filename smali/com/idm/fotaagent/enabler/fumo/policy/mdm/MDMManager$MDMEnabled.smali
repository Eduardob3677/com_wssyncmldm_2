.class Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMEnabled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDMEnabled"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDownloadable()V
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;

    const-string v0, "Download blocked by MDM"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public checkInstallable()V
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;

    const-string v0, "Install blocked by MDM"

    const-string v1, "462"

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
