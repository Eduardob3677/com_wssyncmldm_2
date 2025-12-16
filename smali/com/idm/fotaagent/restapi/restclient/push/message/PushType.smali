.class public abstract enum Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

.field public static final enum FCM:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

.field private static final PUSH_ID_TIMEOUT_IN_SEC:J = 0x1eL

.field public static final enum SPP:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->FCM:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    sget-object v1, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->SPP:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;

    const-string v1, "FCM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->FCM:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$2;

    const-string v1, "SPP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->SPP:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->$values()[Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;
    .locals 1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/FloatingFeature;->forcesSpp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->SPP:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->isChinaCountryFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->SPP:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->FCM:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    return-object v0
.end method


# virtual methods
.method public abstract configFcmAutoInit()V
.end method

.method public abstract getPushId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method
