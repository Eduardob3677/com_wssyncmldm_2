.class public Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback;
.super Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback$SlotSwitchFailedException;
    }
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback;->future:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public doSetResultCode(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SUCCESS:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    if-ne p1, v0, :cond_0

    const-string v0, "Succeed to change the slot"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback$SlotSwitchFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/abupdate/manager/callbacks/SlotSwitchCallback$SlotSwitchFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public setUpdateStatus(IF)V
    .locals 0

    return-void
.end method
