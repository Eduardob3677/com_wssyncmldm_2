.class public abstract Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;
.super Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doSetResultCode(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public setResultCode(I)V
    .locals 2

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/callbacks/AbstractCallback;->doSetResultCode(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V

    return-void
.end method
