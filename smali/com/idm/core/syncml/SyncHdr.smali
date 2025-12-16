.class public Lcom/idm/core/syncml/SyncHdr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cred:Lcom/idm/core/syncml/Cred;

.field private meta:Lcom/idm/core/syncml/Meta;

.field private msgID:Ljava/lang/String;

.field private respURI:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;

.field private source:Lcom/idm/core/syncml/Source;

.field private target:Lcom/idm/core/syncml/Target;

.field private verDTD:Ljava/lang/String;

.field private verProto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCred()Lcom/idm/core/syncml/Cred;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->cred:Lcom/idm/core/syncml/Cred;

    return-object p0
.end method

.method public getMeta()Lcom/idm/core/syncml/Meta;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->meta:Lcom/idm/core/syncml/Meta;

    return-object p0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->msgID:Ljava/lang/String;

    return-object p0
.end method

.method public getRespURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->respURI:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->sessionID:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()Lcom/idm/core/syncml/Source;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->source:Lcom/idm/core/syncml/Source;

    return-object p0
.end method

.method public getTarget()Lcom/idm/core/syncml/Target;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->target:Lcom/idm/core/syncml/Target;

    return-object p0
.end method

.method public getVerDTD()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->verDTD:Ljava/lang/String;

    return-object p0
.end method

.method public getVerProto()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->verProto:Ljava/lang/String;

    return-object p0
.end method

.method public setCred(Lcom/idm/core/syncml/Cred;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->cred:Lcom/idm/core/syncml/Cred;

    return-void
.end method

.method public setMeta(Lcom/idm/core/syncml/Meta;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->meta:Lcom/idm/core/syncml/Meta;

    return-void
.end method

.method public setMsgID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->msgID:Ljava/lang/String;

    return-void
.end method

.method public setRespURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->respURI:Ljava/lang/String;

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->sessionID:Ljava/lang/String;

    return-void
.end method

.method public setSource(Lcom/idm/core/syncml/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->source:Lcom/idm/core/syncml/Source;

    return-void
.end method

.method public setTarget(Lcom/idm/core/syncml/Target;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->target:Lcom/idm/core/syncml/Target;

    return-void
.end method

.method public setVerDTD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->verDTD:Ljava/lang/String;

    return-void
.end method

.method public setVerProto(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/SyncHdr;->verProto:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncHdr [verDTD="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->verDTD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verProto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->verProto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->msgID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->target:Lcom/idm/core/syncml/Target;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->source:Lcom/idm/core/syncml/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", respURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->respURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/SyncHdr;->cred:Lcom/idm/core/syncml/Cred;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/core/syncml/SyncHdr;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
