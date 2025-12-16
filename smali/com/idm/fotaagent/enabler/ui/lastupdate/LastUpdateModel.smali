.class Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lastUpdateInfo:Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->getLastSuccessUpdateHistoryInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->lastUpdateInfo:Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private isCurrentVersionSameAs(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAlternativeMainText()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainBody()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->lastUpdateInfo:Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->date()J

    move-result-wide v0

    const v2, 0x7f13005c

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateAndTime(JILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->lastUpdateInfo:Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->version()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->isCurrentVersionSameAs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->lastUpdateInfo:Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->date()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", last update version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->lastUpdateInfo:Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", last update date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/lastupdate/LastUpdateModel;->lastUpdateInfo:Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->date()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No valid last update info: should not reach here since in this case the menu is disabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
