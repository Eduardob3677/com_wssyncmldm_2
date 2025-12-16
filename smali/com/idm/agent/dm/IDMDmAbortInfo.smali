.class public Lcom/idm/agent/dm/IDMDmAbortInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorCode:I

.field private exceptionMessage:Ljava/lang/String;

.field private httpResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseCode:I

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExceptionMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->exceptionMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpResponse()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->httpResponse:Ljava/util/Map;

    return-object p0
.end method

.method public idmGetErrorCode()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->errorCode:I

    return p0
.end method

.method public idmGetResponseCode()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->responseCode:I

    return p0
.end method

.method public idmGetRetryCount()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->retryCount:I

    return p0
.end method

.method public idmSetErrorCode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK Dm Abort Info idmSetErrorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iput p1, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->errorCode:I

    return-void
.end method

.method public idmSetResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->responseCode:I

    return-void
.end method

.method public idmSetRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->retryCount:I

    return-void
.end method

.method public setExceptionMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->exceptionMessage:Ljava/lang/String;

    return-void
.end method

.method public setResponseHttpHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAbortInfo;->httpResponse:Ljava/util/Map;

    return-void
.end method
