.class public Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;,
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;,
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;,
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;,
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;,
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;,
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;,
        Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Admin"

.field private static final NAME_CUSTOM_PROFILE_MODE:Ljava/lang/String; = "customProfileMode"

.field private static final NAME_FEATURE_DOWNLOAD_TYPE:Ljava/lang/String; = "featureDownloadType"

.field private static final NAME_FEATURE_INSTALL_POSTPONE_TYPE:Ljava/lang/String; = "featureInstallPostponeType"

.field private static final NAME_FEATURE_INSTALL_TYPE:Ljava/lang/String; = "featureInstallType"

.field private static final NAME_FEATURE_OPERATOR:Ljava/lang/String; = "featureOperator"

.field private static final NAME_FEATURE_SERVICE_TYPE:Ljava/lang/String; = "featureServiceType"

.field private static final NAME_FEATURE_UPDATE_TYPE:Ljava/lang/String; = "featureUpdateType"

.field private static final NAME_FEATURE_WIFI_ONLY_BEARER:Ljava/lang/String; = "featureWifiOnlyBearer"

.field private static final NAME_FEATURE_WIFI_ONLY_DEVICE:Ljava/lang/String; = "featureWifiOnlyDevice"

.field private static final NAME_IOP_TEST_MODE:Ljava/lang/String; = "iopTestMode"

.field private static final NAME_PACKAGE_VERIFICATION:Ljava/lang/String; = "packageVerification"

.field private static final NAME_PRODUCTION_SERVER_URI:Ljava/lang/String; = "productionServerUri"

.field private static final NAME_ROAMING_CHECK:Ljava/lang/String; = "roamingCheck"

.field private static final NAME_ROOTING_CHECK:Ljava/lang/String; = "rootingCheck"

.field private static final NAME_SERVER_TYPE:Ljava/lang/String; = "serverType"

.field private static final NAME_SSL_CHECK:Ljava/lang/String; = "sslCheck"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "Admin"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    return-void
.end method

.method public deleteDownloadType()V
    .locals 1

    const-string v0, "featureDownloadType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public deleteInstallPostponeType()V
    .locals 1

    const-string v0, "featureInstallPostponeType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public deleteInstallType()V
    .locals 1

    const-string v0, "featureInstallType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public deleteOperator()V
    .locals 1

    const-string v0, "featureOperator"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public deleteServiceType()V
    .locals 1

    const-string v0, "featureServiceType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public deleteUpdateType()V
    .locals 1

    const-string v0, "featureUpdateType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public deleteWifiOnlyBearer()V
    .locals 1

    const-string v0, "featureWifiOnlyBearer"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public deleteWifiOnlyDevice()V
    .locals 1

    const-string v0, "featureWifiOnlyDevice"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public getDownloadType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;",
            ">;"
        }
    .end annotation

    const-string v0, "featureDownloadType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getInstallPostponeType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;",
            ">;"
        }
    .end annotation

    const-string v0, "featureInstallPostponeType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getInstallType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;",
            ">;"
        }
    .end annotation

    const-string v0, "featureInstallType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getIopTestMode()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;
    .locals 2

    const-string v0, "iopTestMode"

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;->IOP_TEST_MODE_OFF:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;

    return-object p0
.end method

.method public getOperator()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/enabler/feature/Operator;",
            ">;"
        }
    .end annotation

    const-string v0, "featureOperator"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getPackageVerification()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;
    .locals 2

    const-string v0, "packageVerification"

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;->PACKAGE_VERIFICATION_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;

    return-object p0
.end method

.method public getProductionServerUri()Ljava/lang/String;
    .locals 2

    const-string v0, "productionServerUri"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRoamingCheck()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;
    .locals 2

    const-string v0, "roamingCheck"

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;->ROAMING_CHECK_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;

    return-object p0
.end method

.method public getRootingCheck()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;
    .locals 2

    const-string v0, "rootingCheck"

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;->ROOTING_CHECK_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;

    return-object p0
.end method

.method public getServerType()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;
    .locals 2

    const-string v0, "serverType"

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->PRODUCTION_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    return-object p0
.end method

.method public getServiceType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;",
            ">;"
        }
    .end annotation

    const-string v0, "featureServiceType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSslCheck()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;
    .locals 2

    const-string v0, "sslCheck"

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;->SSL_CHECK_OFF:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;

    return-object p0
.end method

.method public getUpdateType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;",
            ">;"
        }
    .end annotation

    const-string v0, "featureUpdateType"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getWifiOnlyBearer()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;",
            ">;"
        }
    .end annotation

    const-string v0, "featureWifiOnlyBearer"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getWifiOnlyDevice()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "featureWifiOnlyDevice"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public isCustomProfileMode()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "customProfileMode"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPackageVerificationEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getPackageVerification()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;->PACKAGE_VERIFICATION_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoamingCheckEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getRoamingCheck()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;->ROAMING_CHECK_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRootingCheckEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getRootingCheck()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;->ROOTING_CHECK_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSslCheckEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getSslCheck()Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;->SSL_CHECK_ON:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCustomProfileMode(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "customProfileMode"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setDownloadType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;)V
    .locals 1

    const-string v0, "featureDownloadType"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setInstallPostponeType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;)V
    .locals 1

    const-string v0, "featureInstallPostponeType"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setInstallType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;)V
    .locals 1

    const-string v0, "featureInstallType"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setIopTestMode(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$IopTestMode;)V
    .locals 1

    const-string v0, "iopTestMode"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setOperator(Lcom/idm/fotaagent/enabler/feature/Operator;)V
    .locals 1

    const-string v0, "featureOperator"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setPackageVerification(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$PackageVerification;)V
    .locals 1

    const-string v0, "packageVerification"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setProductionServerUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "productionServerUri"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setRoamingCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RoamingCheck;)V
    .locals 1

    const-string v0, "roamingCheck"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setRootingCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$RootingCheck;)V
    .locals 1

    const-string v0, "rootingCheck"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setServerType(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;)V
    .locals 1

    const-string v0, "serverType"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setServiceType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;)V
    .locals 1

    const-string v0, "featureServiceType"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setSslCheck(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$SslCheck;)V
    .locals 1

    const-string v0, "sslCheck"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setUpdateType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;)V
    .locals 1

    const-string v0, "featureUpdateType"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setWifiOnlyBearer(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;)V
    .locals 1

    const-string v0, "featureWifiOnlyBearer"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setWifiOnlyDevice(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;)V
    .locals 1

    const-string v0, "featureWifiOnlyDevice"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method
