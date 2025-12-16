.class public final enum Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/ObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

.field public static final enum DELETE:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

.field public static final enum GET:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

.field public static final enum POST:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

.field public static final enum PUT:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->POST:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    sget-object v1, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->GET:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    sget-object v2, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->PUT:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    sget-object v3, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->DELETE:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->POST:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->GET:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    const-string v1, "PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->PUT:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->DELETE:Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->$values()[Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->$VALUES:[Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->$VALUES:[Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/restapi/request/ObjectRequest$HttpMethod;

    return-object v0
.end method
