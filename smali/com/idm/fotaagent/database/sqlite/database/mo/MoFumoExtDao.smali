.class public Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOWNLOAD_CONN_TYPE:Ljava/lang/String; = "/DownloadConnType"

.field public static final DO_CHECKING_ROOTING:Ljava/lang/String; = "/DoCheckingRooting"

.field private static final FORCE_DOWNLOAD:Ljava/lang/String; = "/ForceDownload"

.field private static final FORCE_INSTALL:Ljava/lang/String; = "/ForceInstall"

.field private static final POSTPONE:Ljava/lang/String; = "/Postpone"

.field private static final PRIORITY:Ljava/lang/String; = "/Priority"

.field private static final SVCSTATE:Ljava/lang/String; = "/SvcState"


# instance fields
.field private final context:Landroid/content/Context;

.field private final moDatabaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

.field private final serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->serverId:Ljava/lang/String;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->moDatabaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->context:Landroid/content/Context;

    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/Ext"

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->moDatabaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->serverId:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetFumoNodeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private getValueAsByte(Ljava/lang/String;)B
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method private setRootingCheck(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/DoCheckingRooting"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSvcState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/SvcState"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "set "

    const-string v1, "/Ext"

    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->moDatabaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v1, p2, p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetFumoNodeValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setWifiOnlyForDl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/DownloadConnType"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDownloadType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockDownloadType;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockDownloadType;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "/ForceDownload"

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValueAsByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    return-object p0
.end method

.method public getInstallPostponeType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallPostponeType;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallPostponeType;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "/Postpone"

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValueAsByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    return-object p0
.end method

.method public getInstallType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallType;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallType;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "/ForceInstall"

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValueAsByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    return-object p0
.end method

.method public getSvcState()Ljava/lang/String;
    .locals 2

    const-string v0, "/SvcState"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get SvcState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getUpdateType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockUpdateType;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockUpdateType;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "/Priority"

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValueAsByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    return-object p0
.end method

.method public getWifiOnlyForDl()Z
    .locals 2

    const-string v0, "/DownloadConnType"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get WifiOnlyForDl : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string v0, "Wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBinaryCheckEnabled()Z
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isRootingCheckEnabled()Z

    move-result v0

    const-string v1, "/DoCheckingRooting"

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "binaryCheckEnabledByAdminCommand : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", binaryCheckEnabledByFumo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v0, "T"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setWifiOnlyForDl(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setRootingCheck(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setSvcState(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setUpdateType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;)V

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setInstallPostponeType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;)V

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setInstallType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;)V

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;->Normal:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setDownloadType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;)V

    return-void
.end method

.method public setDownloadType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;->toCode()B

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/ForceDownload"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInstallPostponeType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->toCode()B

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/Postpone"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInstallType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->toCode()B

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/ForceInstall"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUpdateType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;->toCode()B

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/Priority"

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
