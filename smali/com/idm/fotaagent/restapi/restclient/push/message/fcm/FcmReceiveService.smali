.class public Lcom/idm/fotaagent/restapi/restclient/push/message/fcm/FcmReceiveService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletedMessages()V
    .locals 0

    const-string p0, "Deleted messages on server"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/n;)V
    .locals 6

    iget-object p0, p1, Lcom/google/firebase/messaging/n;->c:Landroid/os/Bundle;

    const-string v0, "from"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FCM rawMessage received from : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/google/firebase/messaging/n;->d:Lo/b;

    if-nez p0, :cond_2

    new-instance p0, Lo/b;

    invoke-direct {p0}, Lo/k;-><init>()V

    iget-object v1, p1, Lcom/google/firebase/messaging/n;->c:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/String;

    const-string v5, "google."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "gcm."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "message_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "collapse_key"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v3, v4}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p0, p1, Lcom/google/firebase/messaging/n;->d:Lo/b;

    :cond_2
    iget-object p0, p1, Lcom/google/firebase/messaging/n;->d:Lo/b;

    const/4 p1, 0x0

    const-string v0, "msg"

    invoke-virtual {p0, v0, p1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Received : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->replyUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->startPushRegistration(Landroid/content/Context;)V

    return-void
.end method
