.class public Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "FotaJob"

.field public static final NAME_DESCRIPTION_CONTENT:Ljava/lang/String; = "descriptionContent"

.field private static final NAME_DM_RETRY_COUNT:Ljava/lang/String; = "dmRetryCount"

.field private static final NAME_DOWNLOADED_SIZE:Ljava/lang/String; = "downloadedSize"

.field private static final NAME_EXPIRATION_NOTIFY:Ljava/lang/String; = "expirationNotify"

.field private static final NAME_FIRST_NET_READY:Ljava/lang/String; = "firstNetReady"

.field private static final NAME_INSTALL_TYPE_URI:Ljava/lang/String; = "installTypeUri"

.field public static final NAME_REMAINED_DOWNLOAD_TIME:Ljava/lang/String; = "remainedDownloadTime"

.field private static final NAME_REPORT_RESULT:Ljava/lang/String; = "reportResult"

.field public static final NAME_SERVICE_TYPE:Ljava/lang/String; = "serviceType"

.field private static final NAME_SLOT_SUFFIX:Ljava/lang/String; = "slotSuffix"

.field public static final NAME_UPDATE_INFO:Ljava/lang/String; = "updateInfo"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "FotaJob"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteAll()I
    .locals 1

    invoke-super {p0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    move-result v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->resetUpdateInfo()V

    return v0
.end method

.method public descriptionContent()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/enabler/ui/DescriptionContent;",
            ">;"
        }
    .end annotation

    const-string v0, "descriptionContent"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getDmRetryCount()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dmRetryCount"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDownloadedSize()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "downloadedSize"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpirationNotify()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "expirationNotify"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getInstallTypeUri()Ljava/lang/String;
    .locals 2

    const-string v0, "installTypeUri"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getReportResult()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reportResult"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSlotSuffix()Ljava/lang/String;
    .locals 2

    const-string v0, "slotSuffix"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;-><init>(Ljava/lang/Integer;I)V

    const-string v1, "updateInfo"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    return-object p0
.end method

.method public getUpdateInfoLiveData()Landroidx/lifecycle/C;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;-><init>(Ljava/lang/Integer;I)V

    const-string v1, "updateInfo"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getLiveDataValueOf(Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public isEmergencyService()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->serviceType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Emergency:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstNetReady()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "firstNetReady"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isOptionalService()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->serviceType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Optional:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remainedDownloadTime()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "remainedDownloadTime"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetUpdateInfo()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;-><init>(Ljava/lang/Integer;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setUpdateInfo(Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V

    return-void
.end method

.method public saveDescriptionContent(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V
    .locals 1

    const-string v0, "descriptionContent"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public serviceType()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;
    .locals 2

    const-string v0, "serviceType"

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;->Mandatory:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    return-object p0
.end method

.method public setDmRetryCount(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dmRetryCount"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "downloadedSize"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setExpirationNotify(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "expirationNotify"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setFirstNetReady(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "firstNetReady"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setInstallTypeUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "installTypeUri"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setRemainedDownloadTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "remainedDownloadTime"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setReportResult(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "reportResult"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setServiceType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;)V
    .locals 1

    const-string v0, "serviceType"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setSlotSuffix(Ljava/lang/String;)V
    .locals 1

    const-string v0, "slotSuffix"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setUpdateInfo(Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;)V
    .locals 1

    const-string v0, "updateInfo"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method
