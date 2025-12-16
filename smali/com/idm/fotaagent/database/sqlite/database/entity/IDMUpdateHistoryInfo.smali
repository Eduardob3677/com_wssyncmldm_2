.class public Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private androidVersion:Ljava/lang/String;

.field private date:J

.field private deltaSize:J

.field private description:Ljava/lang/String;

.field private descriptionType:Ljava/lang/String;

.field private oneUiType:Ljava/lang/String;

.field private oneUiVersion:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;

.field private securityPatchLevel:Ljava/lang/String;

.field private summaryDescription:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->descriptionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->summaryDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiType:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->androidVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->securityPatchLevel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public androidVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->androidVersion:Ljava/lang/String;

    return-object p0
.end method

.method public date()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->date:J

    return-wide v0
.end method

.method public deltaSize()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->deltaSize:J

    return-wide v0
.end method

.method public description()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->description:Ljava/lang/String;

    return-object p0
.end method

.method public descriptionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->descriptionType:Ljava/lang/String;

    return-object p0
.end method

.method public isMajor()Z
    .locals 1

    const-string v0, "MAJOR"

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isMinor()Z
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->isMajor()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public oneUiType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiType:Ljava/lang/String;

    return-object p0
.end method

.method public oneUiVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiVersion:Ljava/lang/String;

    return-object p0
.end method

.method public resultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->resultCode:Ljava/lang/String;

    return-object p0
.end method

.method public securityPatchLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->securityPatchLevel:Ljava/lang/String;

    return-object p0
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->androidVersion:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->date:J

    return-void
.end method

.method public setDeltaSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->deltaSize:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->descriptionType:Ljava/lang/String;

    return-void
.end method

.method public setOneUiType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiType:Ljava/lang/String;

    return-void
.end method

.method public setOneUiVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->oneUiVersion:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSecurityPatchLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->securityPatchLevel:Ljava/lang/String;

    return-void
.end method

.method public setSummaryDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->summaryDescription:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public summaryDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->summaryDescription:Ljava/lang/String;

    return-object p0
.end method

.method public version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->version:Ljava/lang/String;

    return-object p0
.end method
