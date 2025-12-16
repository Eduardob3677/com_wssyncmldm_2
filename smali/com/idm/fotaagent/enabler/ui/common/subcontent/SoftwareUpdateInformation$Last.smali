.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Last;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Last"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Last;->makeContent()Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;-><init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)V

    return-void
.end method

.method private static makeContent()Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;
    .locals 9

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->getLastSuccessUpdateHistoryInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object v0

    new-instance v8, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->deltaSize()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->securityPatchLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->androidVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->parseAndroidVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f1300b9

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;-><init>(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method
