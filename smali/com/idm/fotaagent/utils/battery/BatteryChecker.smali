.class public abstract Lcom/idm/fotaagent/utils/battery/BatteryChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForAB;,
        Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->context:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/utils/battery/BatteryChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/BatteryManager;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->lambda$isEnoughBattery$0(Landroid/os/BatteryManager;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/idm/fotaagent/utils/battery/BatteryChecker;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForAB;

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForAB;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/utils/battery/BatteryChecker$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/utils/battery/BatteryChecker$1;)V

    :goto_0
    return-object v0
.end method

.method private isEnoughBattery(I)Z
    .locals 3

    iget-object p0, p0, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->context:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Current Battery Level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] Battery Criterion ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0
.end method

.method private static synthetic lambda$isEnoughBattery$0(Landroid/os/BatteryManager;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getBatteryLevelToUpdate()I
.end method

.method public isEnoughBatteryToUpdate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->getBatteryLevelToUpdate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->isEnoughBattery(I)Z

    move-result p0

    return p0
.end method
