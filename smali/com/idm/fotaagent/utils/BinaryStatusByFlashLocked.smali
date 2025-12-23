.class final enum Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/utils/BinaryStatus;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;",
        ">;",
        "Lcom/idm/fotaagent/utils/BinaryStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

.field public static final enum CUSTOM:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

.field static final FLASH_LOCKED:I = 0x1

.field static final FLASH_UNKNOWN:I = -0x1

.field static final FLASH_UNLOCKED:I = 0x0

.field static final KEY_PROPERTY:Ljava/lang/String; = "ro.boot.flash.locked"

.field public static final enum OFFICIAL:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

.field public static final enum UNKNOWN:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->OFFICIAL:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    sget-object v1, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->CUSTOM:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    sget-object v2, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->UNKNOWN:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    const-string v1, "OFFICIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->OFFICIAL:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    new-instance v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    const-string v1, "CUSTOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->CUSTOM:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    new-instance v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->UNKNOWN:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->$values()[Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->$VALUES:[Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getBinaryStatus()Lcom/idm/fotaagent/utils/BinaryStatus;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->getFlashLocked()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->valueOf(I)Lcom/idm/fotaagent/utils/BinaryStatus;

    move-result-object v0

    return-object v0
.end method

.method private static getFlashLocked()I
    .locals 3

    # Check if mock device is enabled
    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    if-eqz v0, :cond_real

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_real

    # Get bootloader locked status from mock
    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDevicePrefsManager;->getBootloaderLocked(Landroid/content/Context;)Z

    move-result v1

    # Return 1 if locked (OFFICIAL), 0 if unlocked (CUSTOM)
    if-eqz v1, :return_unlocked

    const/4 v0, 0x1

    return v0

    :return_unlocked
    const/4 v0, 0x0

    return v0

    :cond_real
    const-string v0, "ro.boot.flash.locked"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static valueOf(I)Lcom/idm/fotaagent/utils/BinaryStatus;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected flashLocked ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), fallback as FLASH_UNKNOWN"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->UNKNOWN:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    return-object p0

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->OFFICIAL:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    return-object p0

    :cond_1
    sget-object p0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->CUSTOM:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    return-object p0

    :cond_2
    sget-object p0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->UNKNOWN:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->$VALUES:[Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (checked by ro.boot.flash.locked)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
