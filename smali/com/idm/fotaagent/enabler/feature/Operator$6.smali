.class final enum Lcom/idm/fotaagent/enabler/feature/Operator$6;
.super Lcom/idm/fotaagent/enabler/feature/Operator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/feature/Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/feature/Operator;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/feature/Operator$1;)V

    return-void
.end method


# virtual methods
.method public isWifiOnlyForDl(Ljava/lang/String;)Z
    .locals 2

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->isOptionalService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "TMK + Optional + Bigger than 100MB => Wifi Only"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :cond_1
    return p0
.end method
