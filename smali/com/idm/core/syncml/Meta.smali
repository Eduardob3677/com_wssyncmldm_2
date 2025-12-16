.class public Lcom/idm/core/syncml/Meta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private format:Ljava/lang/String;

.field private maxMsgSize:Ljava/lang/String;

.field private maxObjSize:Ljava/lang/String;

.field private nextNonce:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/core/syncml/Meta;->format:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/core/syncml/Meta;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/core/syncml/Meta;->size:Ljava/lang/String;

    iput-object p4, p0, Lcom/idm/core/syncml/Meta;->nextNonce:Ljava/lang/String;

    iput-object p5, p0, Lcom/idm/core/syncml/Meta;->maxMsgSize:Ljava/lang/String;

    iput-object p6, p0, Lcom/idm/core/syncml/Meta;->maxObjSize:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Meta;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxMsgSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Meta;->maxMsgSize:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxObjSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Meta;->maxObjSize:Ljava/lang/String;

    return-object p0
.end method

.method public getNextNonce()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Meta;->nextNonce:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Meta;->size:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Meta;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Meta;->format:Ljava/lang/String;

    return-void
.end method

.method public setMaxMsgSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Meta;->maxMsgSize:Ljava/lang/String;

    return-void
.end method

.method public setMaxObjSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Meta;->maxObjSize:Ljava/lang/String;

    return-void
.end method

.method public setNextNonce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Meta;->nextNonce:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Meta;->size:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Meta;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Meta [Type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/core/syncml/Meta;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/Meta;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", NextNonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/Meta;->nextNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MaxMsgSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/syncml/Meta;->maxMsgSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MaxObjSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/core/syncml/Meta;->maxObjSize:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
