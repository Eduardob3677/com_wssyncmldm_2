.class public Lcom/idm/core/syncml/SyncBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private commandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;"
        }
    .end annotation
.end field

.field private finalMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/core/syncml/SyncBody;->commandList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/core/syncml/SyncBody;->finalMsg:Z

    return-void
.end method


# virtual methods
.method public getCommandList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/core/syncml/SyncBody;->commandList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isFinalMsg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/idm/core/syncml/SyncBody;->finalMsg:Z

    return p0
.end method

.method public setCommandList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/core/syncml/SyncBody;->commandList:Ljava/util/ArrayList;

    return-void
.end method

.method public setFinalMsg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/idm/core/syncml/SyncBody;->finalMsg:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncBody [commandList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/core/syncml/SyncBody;->commandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finalMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/idm/core/syncml/SyncBody;->finalMsg:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
