.class abstract enum Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;",
        ">;",
        "Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum AD:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum CM:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum CU:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum DM:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum DS:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum PU:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum SC:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

.field public static final enum UB:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
    .locals 8

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->DM:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    sget-object v1, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->DS:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    sget-object v2, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->SC:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    sget-object v3, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->UB:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    sget-object v4, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->AD:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    sget-object v5, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->PU:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    sget-object v6, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->CM:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    sget-object v7, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->CU:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    filled-new-array/range {v0 .. v7}, [Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$1;

    const-string v1, "DM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->DM:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$2;

    const-string v1, "DS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->DS:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$3;

    const-string v1, "SC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->SC:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$4;

    const-string v1, "UB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->UB:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$5;

    const-string v1, "AD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->AD:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$6;

    const-string v1, "PU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->PU:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$7;

    const-string v1, "CM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->CM:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$8;

    const-string v1, "CU"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->CU:Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->$values()[Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->decodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static decodeToBytes(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static decodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/android/fotaagent/common/util/Xpath;

    invoke-direct {v0, p0}, Lcom/samsung/android/fotaagent/common/util/Xpath;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/fotaagent/common/util/Xpath;->getResultOfString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private reply(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "not replied due to empty url"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Received;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/PushRestClient$Received;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "failed to reply"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "replyUrl: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->$VALUES:[Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    return-object v0
.end method


# virtual methods
.method public final handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0, p3}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->reply(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->process(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract process(Ljava/lang/String;Ljava/lang/String;)V
.end method
