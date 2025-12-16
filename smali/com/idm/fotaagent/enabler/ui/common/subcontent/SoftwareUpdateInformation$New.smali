.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "New"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;->makeContent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;-><init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)V

    return-void
.end method

.method private static makeContent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;
    .locals 9

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v2, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getSecurityPatchVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateOneUiVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwOsVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->parseAndroidVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f1300b9

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;-><init>(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
