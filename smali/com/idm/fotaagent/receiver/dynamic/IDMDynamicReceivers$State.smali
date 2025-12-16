.class final enum Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

.field public static final enum PARTIALLY_REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

.field public static final enum REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

.field public static final enum UNREGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->UNREGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->PARTIALLY_REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    sget-object v2, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    const-string v1, "UNREGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->UNREGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    new-instance v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    const-string v1, "PARTIALLY_REGISTERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->PARTIALLY_REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    new-instance v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    const-string v1, "REGISTERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->REGISTERED:Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->$values()[Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->$VALUES:[Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->$VALUES:[Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$State;

    return-object v0
.end method
