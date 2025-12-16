.class public final enum Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

.field public static final enum OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

.field public static final enum REMOVE:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

.field public static final enum REMOVE_OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

.field public static final enum REMOVE_WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

.field public static final enum WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

.field public static final enum WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;


# instance fields
.field private final carrierFeatureValue:Ljava/lang/String;

.field private final option:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;
    .locals 6

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v3, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE_OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v4, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE_WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v5, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    filled-new-array/range {v0 .. v5}, [Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    const-string v2, "OFF"

    const/4 v3, 0x0

    const-string v4, "off"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    const-string v3, "WIFI"

    const/4 v4, 0x1

    const-string v5, "wifi"

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    sget-object v3, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    const-string v4, "WIFI_AND_CELLULAR"

    const/4 v5, 0x2

    const-string v6, "wifiandcellular"

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->WIFI_AND_CELLULAR:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    const/4 v4, 0x3

    const-string v5, "remove,off"

    const-string v6, "REMOVE_OFF"

    invoke-direct {v0, v6, v4, v5, v1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE_OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    const/4 v1, 0x4

    const-string v4, "remove,wifi"

    const-string v5, "REMOVE_WIFI"

    invoke-direct {v0, v5, v1, v4, v2}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE_WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    const/4 v1, 0x5

    const-string v2, "remove"

    const-string v4, "REMOVE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->$values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->carrierFeatureValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->option:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->lambda$get$0(Ljava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;)Z

    move-result p0

    return p0
.end method

.method public static get()Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;
    .locals 4

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->getDefaultAutoDownload()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/idm/core/ddf/a;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/idm/core/ddf/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    return-object v0
.end method

.method private static synthetic lambda$get$0(Ljava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;)Z
    .locals 0

    iget-object p1, p1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->carrierFeatureValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->$VALUES:[Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->option:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->getDbValue()I

    move-result p0

    return p0
.end method

.method public getOption()Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->option:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    return-object p0
.end method

.method public needsToRemoveAutoDownloadMenu()Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE_WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->REMOVE_OFF:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
