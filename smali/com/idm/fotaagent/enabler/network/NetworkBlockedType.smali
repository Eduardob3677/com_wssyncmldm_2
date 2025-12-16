.class public enum Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

.field public static final enum NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

.field public static final enum NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

.field public static final enum ROAMING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

.field public static final enum WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    sget-object v1, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->ROAMING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    sget-object v2, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    sget-object v3, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$1;

    const-string v1, "NO_BLOCKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    new-instance v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$2;

    const-string v1, "ROAMING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->ROAMING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    new-instance v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$3;

    const-string v1, "WIFI_DISCONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->WIFI_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    new-instance v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$4;

    const-string v1, "NETWORK_DISCONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NETWORK_DISCONNECTED:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->$values()[Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->$VALUES:[Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/network/NetworkBlockedType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->$VALUES:[Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object v0
.end method


# virtual methods
.method public getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBlocked()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
