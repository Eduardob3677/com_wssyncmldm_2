.class final enum Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType$2;
.super Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/restapi/restclient/RestClientServiceType$1;)V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doAction"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "msg"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    :try_start_0
    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->type()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlers;->of(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandler;

    move-result-object p0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->replyUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
