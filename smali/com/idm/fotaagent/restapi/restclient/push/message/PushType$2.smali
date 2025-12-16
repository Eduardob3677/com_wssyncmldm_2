.class final enum Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$2;
.super Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$2$RegistrationChangedReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_APPID:Ljava/lang/String; = "appId"

.field private static final EXTRA_REQ_TYPE:Ljava/lang/String; = "reqType"

.field private static final EXTRA_USERDATA:Ljava/lang/String; = "userdata"

.field private static final PUSH_ACTION:Ljava/lang/String; = "com.sec.spp.RegistrationChangedAction"

.field private static final PUSH_PERMISSION:Ljava/lang/String; = "com.sec.spp.permission.SEND"

.field private static final PUSH_REQ_TYPE_REGISTRATION:I = 0x1

.field private static final PUSH_SERVICE_REQUEST:Ljava/lang/String; = "com.sec.spp.action.SPP_REQUEST"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;)V

    return-void
.end method


# virtual methods
.method public configFcmAutoInit()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/a4;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "disable FCM auto init"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g(Z)V

    :cond_0
    return-void
.end method

.method public getPushId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "pushId: "

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.spp.action.SPP_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "reqType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appId"

    const-string v3, "2f233f9093de9dbc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userdata"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.spp.RegistrationChangedAction"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v3, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$2$RegistrationChangedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$2$RegistrationChangedReceiver;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$2;Ljava/util/concurrent/CompletableFuture;)V

    const-string p0, "com.sec.spp.permission.SEND"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, p0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;

    const-string v1, "SPP"

    invoke-direct {v0, v1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;

    invoke-direct {v1, v0, p0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
