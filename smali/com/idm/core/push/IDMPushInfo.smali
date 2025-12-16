.class public Lcom/idm/core/push/IDMPushInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private future:I

.field private id:I

.field private initiator:I

.field private serverId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private status:I

.field private triggerBody:[B

.field private triggerHeaderSize:I

.field private uiMode:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/core/push/IDMPushInfo;->id:I

    iput v0, p0, Lcom/idm/core/push/IDMPushInfo;->version:I

    iput v0, p0, Lcom/idm/core/push/IDMPushInfo;->uiMode:I

    iput v0, p0, Lcom/idm/core/push/IDMPushInfo;->initiator:I

    iput v0, p0, Lcom/idm/core/push/IDMPushInfo;->future:I

    const-string v1, ""

    iput-object v1, p0, Lcom/idm/core/push/IDMPushInfo;->sessionId:Ljava/lang/String;

    iput-object v1, p0, Lcom/idm/core/push/IDMPushInfo;->serverId:Ljava/lang/String;

    iput v0, p0, Lcom/idm/core/push/IDMPushInfo;->status:I

    iput v0, p0, Lcom/idm/core/push/IDMPushInfo;->triggerHeaderSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/core/push/IDMPushInfo;->triggerBody:[B

    return-void
.end method


# virtual methods
.method public idmPushGetFuture()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->future:I

    return p0
.end method

.method public idmPushGetId()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->id:I

    return p0
.end method

.method public idmPushGetInitiator()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->initiator:I

    return p0
.end method

.method public idmPushGetServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/push/IDMPushInfo;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method public idmPushGetSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/push/IDMPushInfo;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public idmPushGetStatus()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->status:I

    return p0
.end method

.method public idmPushGetTriggerBody()[B
    .locals 0

    iget-object p0, p0, Lcom/idm/core/push/IDMPushInfo;->triggerBody:[B

    return-object p0
.end method

.method public idmPushGetTriggerHeaderSize()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->triggerHeaderSize:I

    return p0
.end method

.method public idmPushGetUiMode()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->uiMode:I

    return p0
.end method

.method public idmPushGetVersion()I
    .locals 0

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->version:I

    return p0
.end method

.method public idmPushSetFuture(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushInfo;->future:I

    return-void
.end method

.method public idmPushSetId(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushInfo;->id:I

    return-void
.end method

.method public idmPushSetInitiator(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushInfo;->initiator:I

    return-void
.end method

.method public idmPushSetServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/push/IDMPushInfo;->serverId:Ljava/lang/String;

    return-void
.end method

.method public idmPushSetSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/push/IDMPushInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public idmPushSetStatus(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushInfo;->status:I

    return-void
.end method

.method public idmPushSetTriggerBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/push/IDMPushInfo;->triggerBody:[B

    return-void
.end method

.method public idmPushSetTriggerHeaderSize(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushInfo;->triggerHeaderSize:I

    return-void
.end method

.method public idmPushSetUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushInfo;->uiMode:I

    return-void
.end method

.method public idmPushSetVersion(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/push/IDMPushInfo;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMPushInfo [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/idm/core/push/IDMPushInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/core/push/IDMPushInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/core/push/IDMPushInfo;->uiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/core/push/IDMPushInfo;->initiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", future="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/core/push/IDMPushInfo;->future:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/push/IDMPushInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/push/IDMPushInfo;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/core/push/IDMPushInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", triggerBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/push/IDMPushInfo;->triggerBody:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", triggerHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/idm/core/push/IDMPushInfo;->triggerHeaderSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
