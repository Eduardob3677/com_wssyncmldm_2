.class public final enum Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

.field public static final enum EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

.field public static final enum NOT_EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

.field public static final enum NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    sget-object v2, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    const-string v1, "EXPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    new-instance v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    const-string v1, "NOT_EXPORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    new-instance v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    const-string v1, "NOT_SPECIFY_FOR_SYSTEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->$values()[Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->$VALUES:[Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->$VALUES:[Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    return-object v0
.end method
