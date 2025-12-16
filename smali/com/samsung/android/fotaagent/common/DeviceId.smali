.class public Lcom/samsung/android/fotaagent/common/DeviceId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;
    }
.end annotation


# static fields
.field private static final FIRST_API_LEVEL:Ljava/lang/String; = "ro.product.first_api_level"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceIdType(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isWifiOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isLiveDemoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/DeviceId;->getFirstApiLevel()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    sget-object p0, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;->IMEI:Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;

    return-object p0

    :cond_1
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getDeviceId()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;->of(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/DeviceId;->isPhoneTypeCDMA(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;->MEID:Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;->IMEI:Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;->TWID:Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;

    return-object p0
.end method

.method private static getFirstApiLevel()I
    .locals 2

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static isPhoneTypeCDMA(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getCurrentPhoneType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/DeviceId;->getDeviceIdType(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get Device ID for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Count: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method
