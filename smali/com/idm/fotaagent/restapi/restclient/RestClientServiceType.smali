.class public abstract enum Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

.field public static final enum ONE_SHOT_HEARTBEAT:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

.field public static final enum PERIODIC_HEARTBEAT:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

.field public static final enum POLLING:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

.field public static final enum SPP:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;


# instance fields
.field private final requestCode:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->POLLING:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    sget-object v1, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->SPP:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    sget-object v2, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->ONE_SHOT_HEARTBEAT:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    sget-object v3, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->PERIODIC_HEARTBEAT:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$1;

    const-string v1, "POLLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->POLLING:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$2;

    const-string v1, "SPP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->SPP:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$3;

    const-string v1, "ONE_SHOT_HEARTBEAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->ONE_SHOT_HEARTBEAT:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$4;

    const-string v1, "PERIODIC_HEARTBEAT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->PERIODIC_HEARTBEAT:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->$values()[Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->requestCode:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/idm/fotaagent/restapi/restclient/RestClientServiceType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    return-object v0
.end method


# virtual methods
.method public abstract doAction(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "restClientServiceType"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->requestCode:I

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v1, 0xc000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
