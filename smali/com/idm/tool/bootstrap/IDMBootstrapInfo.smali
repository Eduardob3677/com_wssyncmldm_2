.class public Lcom/idm/tool/bootstrap/IDMBootstrapInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private CmdCount:I

.field private bNeedDefaultNode:Z

.field private itemCount:I

.field private result:Z

.field private serverID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->result:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->serverID:Ljava/lang/String;

    iput v0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->CmdCount:I

    iput v0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->itemCount:I

    iput-boolean v0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->bNeedDefaultNode:Z

    return-void
.end method


# virtual methods
.method public idmGetCmdCount()I
    .locals 0

    iget p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->CmdCount:I

    return p0
.end method

.method public idmGetItemCount()I
    .locals 0

    iget p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->itemCount:I

    return p0
.end method

.method public idmGetServerID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->serverID:Ljava/lang/String;

    return-object p0
.end method

.method public idmIsNeedDefaultNode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->bNeedDefaultNode:Z

    return p0
.end method

.method public idmIsResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->result:Z

    return p0
.end method

.method public idmSetCmdCount(I)V
    .locals 0

    iput p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->CmdCount:I

    return-void
.end method

.method public idmSetItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->itemCount:I

    return-void
.end method

.method public idmSetNeedDefaultNode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->bNeedDefaultNode:Z

    return-void
.end method

.method public idmSetResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->result:Z

    return-void
.end method

.method public idmSetServerID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->serverID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMBootstrapInfo{result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serverID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->serverID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', CmdCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->CmdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bNeedDefaultNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->bNeedDefaultNode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
