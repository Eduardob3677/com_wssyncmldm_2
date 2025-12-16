.class public Lcom/idm/agent/dm/IDMDmEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/Object;

.field private serverId:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmGetData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public idmGetServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetState()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->state:I

    return p0
.end method

.method public idmSetData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->data:Ljava/lang/Object;

    return-void
.end method

.method public idmSetServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->serverId:Ljava/lang/String;

    return-void
.end method

.method public idmSetState(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventInfo [serverId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/idm/agent/dm/IDMDmEventInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
