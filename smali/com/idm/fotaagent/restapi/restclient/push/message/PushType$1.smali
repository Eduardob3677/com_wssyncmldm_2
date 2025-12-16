.class final enum Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;
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
        Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;
    }
.end annotation


# static fields
.field private static final FCM_UNKNOWN_ERROR:Ljava/lang/String; = "PLAY_SERVICE_ERROR"

.field private static final PLAY_SERVICE_ERROR:Ljava/lang/String; = "PLAY_SERVICE_NOT_AVAILABLE"


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

    if-nez p0, :cond_0

    const-string p0, "enable FCM auto init"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g(Z)V

    :cond_0
    return-void
.end method

.method public getPushId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "PLAY_SERVICE_ERROR"

    const-string v1, "pushId: "

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lu1/n;

    move-result-object v2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;

    invoke-direct {v4, p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v3, v4}, Lu1/n;->a(Ljava/util/concurrent/Executor;Lu1/c;)Lu1/n;

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p1, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;

    invoke-direct {p1, v0, p0}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;

    const-string p1, "PLAY_SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1

    sget-object p0, LZ0/e;->c:LZ0/e;

    sget v0, LZ0/f;->a:I

    invoke-virtual {p0, p1, v0}, LZ0/e;->b(Landroid/content/Context;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FCM not available: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
