.class public final Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandler;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;

    move-result-object p0

    return-object p0
.end method
