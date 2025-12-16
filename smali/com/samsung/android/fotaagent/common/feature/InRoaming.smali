.class public abstract enum Lcom/samsung/android/fotaagent/common/feature/InRoaming;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/fotaagent/common/feature/InRoaming;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/fotaagent/common/feature/InRoaming;

.field static final ACTION_DOMESTICROAMING:Ljava/lang/String; = "domestic_roaming"

.field static final ACTION_ONLYWIFI:Ljava/lang/String; = "onlywifi"

.field static final ACTION_ONLYWIFIPULL:Ljava/lang/String; = "onlywifipull"

.field static final ACTION_ROAMINGINFO:Ljava/lang/String; = "roaminginfo"

.field public static final enum DOMESTIC_MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

.field public static final enum MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

.field public static final enum ONLY_WIFI_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

.field public static final enum ONLY_WIFI_PULL_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

.field private static inRoaming:Lcom/samsung/android/fotaagent/common/feature/InRoaming;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/fotaagent/common/feature/InRoaming;
    .locals 4

    sget-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    sget-object v1, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->DOMESTIC_MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    sget-object v2, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->ONLY_WIFI_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    sget-object v3, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->ONLY_WIFI_PULL_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming$1;

    const-string v1, "MOBILE_ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/fotaagent/common/feature/InRoaming$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    new-instance v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming$2;

    const-string v1, "DOMESTIC_MOBILE_ALLOWED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/fotaagent/common/feature/InRoaming$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->DOMESTIC_MOBILE_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    new-instance v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming$3;

    const-string v1, "ONLY_WIFI_ALLOWED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/fotaagent/common/feature/InRoaming$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->ONLY_WIFI_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    new-instance v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming$4;

    const-string v1, "ONLY_WIFI_PULL_ALLOWED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/fotaagent/common/feature/InRoaming$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->ONLY_WIFI_PULL_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->$values()[Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->$VALUES:[Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->getFeature()Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->inRoaming:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/fotaagent/common/feature/InRoaming$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get()Lcom/samsung/android/fotaagent/common/feature/InRoaming;
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->inRoaming:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    return-object v0
.end method

.method private static getActions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->getActionDuringRoaming(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static getFeature()Lcom/samsung/android/fotaagent/common/feature/InRoaming;
    .locals 6

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->values()[Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->matches(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "roaming action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->ONLY_WIFI_ALLOWED:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    return-object v0
.end method

.method public static reloadFeature()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->getFeature()Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->inRoaming:Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/fotaagent/common/feature/InRoaming;
    .locals 1

    const-class v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/fotaagent/common/feature/InRoaming;
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/feature/InRoaming;->$VALUES:[Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    invoke-virtual {v0}, [Lcom/samsung/android/fotaagent/common/feature/InRoaming;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/fotaagent/common/feature/InRoaming;

    return-object v0
.end method


# virtual methods
.method public abstract matches(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
