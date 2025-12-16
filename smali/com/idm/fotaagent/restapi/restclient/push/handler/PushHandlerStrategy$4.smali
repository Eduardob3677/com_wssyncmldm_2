.class final enum Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$4;
.super Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$1;)V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->sendMDMUnregister()V

    return-void
.end method
