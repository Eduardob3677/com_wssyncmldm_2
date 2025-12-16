.class public final enum Lcom/idm/agent/restclient/RestRequest$MethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/agent/restclient/RestRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/agent/restclient/RestRequest$MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/agent/restclient/RestRequest$MethodType;

.field public static final enum REST_METHOD_GET:Lcom/idm/agent/restclient/RestRequest$MethodType;

.field public static final enum REST_METHOD_POST:Lcom/idm/agent/restclient/RestRequest$MethodType;


# instance fields
.field private final methodType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/idm/agent/restclient/RestRequest$MethodType;

    const/4 v1, 0x0

    const-string v2, "POST"

    const-string v3, "REST_METHOD_POST"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/agent/restclient/RestRequest$MethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/agent/restclient/RestRequest$MethodType;->REST_METHOD_POST:Lcom/idm/agent/restclient/RestRequest$MethodType;

    new-instance v1, Lcom/idm/agent/restclient/RestRequest$MethodType;

    const/4 v2, 0x1

    const-string v3, "GET"

    const-string v4, "REST_METHOD_GET"

    invoke-direct {v1, v4, v2, v3}, Lcom/idm/agent/restclient/RestRequest$MethodType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/idm/agent/restclient/RestRequest$MethodType;->REST_METHOD_GET:Lcom/idm/agent/restclient/RestRequest$MethodType;

    filled-new-array {v0, v1}, [Lcom/idm/agent/restclient/RestRequest$MethodType;

    move-result-object v0

    sput-object v0, Lcom/idm/agent/restclient/RestRequest$MethodType;->$VALUES:[Lcom/idm/agent/restclient/RestRequest$MethodType;

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

    iput-object p3, p0, Lcom/idm/agent/restclient/RestRequest$MethodType;->methodType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/agent/restclient/RestRequest$MethodType;
    .locals 1

    const-class v0, Lcom/idm/agent/restclient/RestRequest$MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/agent/restclient/RestRequest$MethodType;

    return-object p0
.end method

.method public static values()[Lcom/idm/agent/restclient/RestRequest$MethodType;
    .locals 1

    sget-object v0, Lcom/idm/agent/restclient/RestRequest$MethodType;->$VALUES:[Lcom/idm/agent/restclient/RestRequest$MethodType;

    invoke-virtual {v0}, [Lcom/idm/agent/restclient/RestRequest$MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/agent/restclient/RestRequest$MethodType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequest$MethodType;->methodType:Ljava/lang/String;

    return-object p0
.end method
