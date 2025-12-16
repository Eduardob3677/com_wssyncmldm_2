.class public abstract Lcom/idm/core/syncml/ResponseCommand;
.super Lcom/idm/core/syncml/ItemCommand;
.source "SourceFile"


# instance fields
.field protected CmdRef:Ljava/lang/String;

.field protected MsgRef:Ljava/lang/String;

.field protected SourceRef:Ljava/lang/String;

.field protected TargetRef:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/syncml/ItemCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdRef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/ResponseCommand;->CmdRef:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgRef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/ResponseCommand;->MsgRef:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceRef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/ResponseCommand;->SourceRef:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetRef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/ResponseCommand;->TargetRef:Ljava/lang/String;

    return-object p0
.end method

.method public setCmdRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/ResponseCommand;->CmdRef:Ljava/lang/String;

    return-void
.end method

.method public setMsgRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/ResponseCommand;->MsgRef:Ljava/lang/String;

    return-void
.end method

.method public setSourceRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/ResponseCommand;->SourceRef:Ljava/lang/String;

    return-void
.end method

.method public setTargetRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/ResponseCommand;->TargetRef:Ljava/lang/String;

    return-void
.end method
