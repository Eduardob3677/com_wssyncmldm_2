.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# static fields
.field private static final STAGING_HOST:Ljava/lang/String; = "stg-fota-cloud.samsungdms.net"


# instance fields
.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->lambda$execute$0(Ljava/lang/Enum;)V

    return-void
.end method

.method private getServerUri()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    const-string v0, "x6g1q14r75"

    invoke-virtual {p0, v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccServerUriInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->changeServer(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;)V

    return-void
.end method

.method private setServerUri(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    const-string v0, "x6g1q14r75"

    invoke-virtual {p0, p1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccServerUriInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeServer(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;)V
    .locals 3

    const-string v0, "serverType: "

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getServerType()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already applied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server$1;->$SwitchMap$com$idm$fotaagent$database$room$data$repository$AdminRepository$ServerType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->getServerUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setProductionServerUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->getStagingServerUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->setServerUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->getProductionServerUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->setServerUri(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " successfully applied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setServerType(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p1, "Failed to change server"

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public execute()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isUserShipBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Not allowed in user-ship binary"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getServerType()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    move-result-object v1

    new-instance v2, LC2/c;

    const/16 v3, 0xb

    invoke-direct {v2, v3, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    const-string v3, "Select server for SFOTA"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->showDialog(Ljava/lang/String;[Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getProductionServerUri()Ljava/net/URI;
    .locals 1

    new-instance v0, Ljava/net/URI;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getProductionServerUri()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getStagingServerUri()Ljava/net/URI;
    .locals 4

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->getProductionServerUri()Ljava/net/URI;

    move-result-object p0

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p0

    const-string v2, "https"

    const-string v3, "stg-fota-cloud.samsungdms.net"

    invoke-direct {v0, v2, v3, v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
