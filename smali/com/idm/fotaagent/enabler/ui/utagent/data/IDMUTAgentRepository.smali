.class public Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentSource;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public idmGetDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmGetPollingTime()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->getNextTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Next Polling Time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%1$s %2$s"

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;->context:Landroid/content/Context;

    invoke-static {v0, v1, v3, p0}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateAndTime(JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmGetVersionInfo()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Version:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startLocalTest()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/data/IDMUTAgentRepository;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getAdminCommandExecutor(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;

    move-result-object p0

    const-string v0, "localtest"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;->execute(Ljava/lang/String;)V

    return-void
.end method
