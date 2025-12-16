.class public abstract enum Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

.field public static final enum LAUNCH_APP:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

.field public static final enum OK:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

.field public static final enum SEND_BROADCAST:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

.field public static final enum START_ACTIVITY:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

.field public static final enum START_SERVICE:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;
    .locals 5

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->OK:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    sget-object v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->SEND_BROADCAST:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    sget-object v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->START_ACTIVITY:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    sget-object v3, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->START_SERVICE:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    sget-object v4, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->LAUNCH_APP:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$1;

    const/4 v1, 0x0

    const-string v2, "-1"

    const-string v3, "OK"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->OK:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$2;

    const/4 v1, 0x1

    const-string v2, "0"

    const-string v3, "SEND_BROADCAST"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->SEND_BROADCAST:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$3;

    const/4 v1, 0x2

    const-string v2, "1"

    const-string v3, "START_ACTIVITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->START_ACTIVITY:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$4;

    const/4 v1, 0x3

    const-string v2, "2"

    const-string v3, "START_SERVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->START_SERVICE:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$5;

    const/4 v1, 0x4

    const-string v2, "3"

    const-string v3, "LAUNCH_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->LAUNCH_APP:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->$values()[Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->type:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->values()[Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->type:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type : "

    invoke-static {v1, p0}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    return-object v0
.end method


# virtual methods
.method public act(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "intent is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->doAct(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public abstract doAct(Landroid/content/Context;Landroid/content/Intent;)V
.end method
