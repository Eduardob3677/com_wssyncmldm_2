.class public Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "General"

.field private static final NAME_BOOT_ID:Ljava/lang/String; = "bootId"

.field private static final NAME_BOOT_TIME:Ljava/lang/String; = "bootTime"

.field private static final NAME_DEVICE_REGISTRATION_ERROR_CODE:Ljava/lang/String; = "deviceRegistrationErrorCode"

.field private static final NAME_DEVICE_REGISTRATION_REPORT_TIME:Ljava/lang/String; = "deviceRegistrationReportTime"

.field private static final NAME_NEEDS_SEND_RESULT_FOR_MDM:Ljava/lang/String; = "needsToSendResultForMDM"

.field static final NAME_PREVIOUS_FIRMWARE_VERSION:Ljava/lang/String; = "previousFirmwareVersion"

.field private static final NAME_RESET_TASK_STATUS:Ljava/lang/String; = "resetTaskStatus"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "General"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->lambda$setDeviceRegistrationReportInfo$0(Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$setDeviceRegistrationReportInfo$0(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "deviceRegistrationErrorCode"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "deviceRegistrationReportTime"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method private setNeedsSendResultForMdm(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needsToSendResultForMDM"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method private setResetTaskStatus(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "resetTaskStatus"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method


# virtual methods
.method public clearBootTime()V
    .locals 1

    const-string v0, "bootTime"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public disableSendResultForMDM()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setNeedsSendResultForMdm(Z)V

    return-void
.end method

.method public enableSendResultForMDM()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setNeedsSendResultForMdm(Z)V

    return-void
.end method

.method public getBootId()Ljava/lang/String;
    .locals 2

    const-string v0, "bootId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBootTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bootTime"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceRegistrationErrorCode()Ljava/lang/String;
    .locals 2

    const-string v0, "deviceRegistrationErrorCode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceRegistrationReportTime()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "deviceRegistrationReportTime"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviousFirmwareVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "previousFirmwareVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isFinishedResetTask()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "resetTaskStatus"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public needsToSendResultForMDM()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "needsToSendResultForMDM"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setBootId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bootId"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setBootTime(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "bootTime"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setDeviceRegistrationReportInfo(Ljava/lang/String;J)V
    .locals 7

    new-instance v6, Lcom/idm/fotaagent/database/room/data/repository/e;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/database/room/data/repository/e;-><init>(Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;Ljava/lang/String;JI)V

    invoke-virtual {p0, v6}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreviousFirmwareVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "previousFirmwareVersion"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setResetTaskStatusAsFinished()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setResetTaskStatus(Z)V

    return-void
.end method

.method public setResetTaskStatusAsStarted()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setResetTaskStatus(Z)V

    return-void
.end method
