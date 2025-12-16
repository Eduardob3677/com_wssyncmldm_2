.class public Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForAB;
.super Lcom/idm/fotaagent/utils/battery/BatteryChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/battery/BatteryChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAB"
.end annotation


# static fields
.field private static final BATTERY_LEVEL_FOR_DEFAULT:I = 0x14

.field private static final BATTERY_LEVEL_GAP_FOR_DOWNLOAD:I = 0xa


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/utils/battery/BatteryChecker$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/utils/battery/BatteryChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForAB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBatteryLevelToUpdate()I
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result p0

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lt p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getBatteryInstallLevel()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getBatteryInstallLevel()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method
