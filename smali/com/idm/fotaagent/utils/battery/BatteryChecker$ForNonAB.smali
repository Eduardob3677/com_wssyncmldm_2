.class public Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;
.super Lcom/idm/fotaagent/utils/battery/BatteryChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/battery/BatteryChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForNonAB"
.end annotation


# static fields
.field private static final BATTERY_LEVEL_FOR_GLOBAL:I = 0x14

.field private static final BATTERY_LEVEL_FOR_TMB:I = 0x1e


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/utils/battery/BatteryChecker$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/utils/battery/BatteryChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;)I
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method private getBatteryLevel()I
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->TMB:Lcom/idm/fotaagent/enabler/feature/Operator;

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/feature/Operator;->TMK:Lcom/idm/fotaagent/enabler/feature/Operator;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x14

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x1e

    return p0
.end method


# virtual methods
.method public getBatteryLevelToUpdate()I
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getBatteryInstallLevel()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/receiver/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/receiver/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
