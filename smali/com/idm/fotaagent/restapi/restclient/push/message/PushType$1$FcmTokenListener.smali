.class Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FcmTokenListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu1/c;"
    }
.end annotation


# instance fields
.field private final futureForPushId:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;->this$0:Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;->futureForPushId:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public onComplete(Lu1/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu1/h;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lu1/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching FCM registration token failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu1/h;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;->futureForPushId:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;

    invoke-virtual {p1}, Lu1/h;->d()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushIdNotRegisteredException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType$1$FcmTokenListener;->futureForPushId:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Lu1/h;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
