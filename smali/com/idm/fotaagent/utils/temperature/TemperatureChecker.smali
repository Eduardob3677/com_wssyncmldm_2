.class public Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TEMPERATURE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventIdFinishReboot()Ljava/lang/String;
    .locals 0

    const-string p0, "0203"

    return-object p0
.end method

.method public getEventIdReadyToRestart()Ljava/lang/String;
    .locals 0

    const-string p0, "0202"

    return-object p0
.end method

.method public getEventIdStartDownload()Ljava/lang/String;
    .locals 0

    const-string p0, "0201"

    return-object p0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 2

    const/16 p0, 0x9

    invoke-static {p0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "TemperatureManager is null. so return -1"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temperature - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public needsCheckTemperatureChange()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
