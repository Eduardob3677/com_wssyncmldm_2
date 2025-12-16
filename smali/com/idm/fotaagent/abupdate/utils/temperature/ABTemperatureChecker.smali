.class public Lcom/idm/fotaagent/abupdate/utils/temperature/ABTemperatureChecker;
.super Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventIdFinishReboot()Ljava/lang/String;
    .locals 0

    const-string p0, "0213"

    return-object p0
.end method

.method public getEventIdReadyToRestart()Ljava/lang/String;
    .locals 0

    const-string p0, "0212"

    return-object p0
.end method

.method public getEventIdStartDownload()Ljava/lang/String;
    .locals 0

    const-string p0, "0211"

    return-object p0
.end method

.method public needsCheckTemperatureChange()Z
    .locals 3

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isEmergencyService()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "don\'t need to check TemperatureChange. It\'s Emergency service type"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getInitType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string p0, "don\'t need to check TemperatureChange. It\'s not device init"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const-string p0, "don\'t need to check TemperatureChange. It\'s not background ui mode"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
