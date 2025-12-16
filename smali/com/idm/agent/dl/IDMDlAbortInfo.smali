.class public Lcom/idm/agent/dl/IDMDlAbortInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorCode:I

.field private responseCode:I

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmClearDlAbortInfo()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->errorCode:I

    iput v0, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->responseCode:I

    iput v0, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->retryCount:I

    return-void
.end method

.method public idmGetErrorCode()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->errorCode:I

    return p0
.end method

.method public idmGetResponseCode()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->responseCode:I

    return p0
.end method

.method public idmGetRetryCount()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->retryCount:I

    return p0
.end method

.method public idmSetErrorCode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK Dl Abort Info idmSetErrorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iput p1, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->errorCode:I

    return-void
.end method

.method public idmSetResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->responseCode:I

    return-void
.end method

.method public idmSetRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dl/IDMDlAbortInfo;->retryCount:I

    return-void
.end method
