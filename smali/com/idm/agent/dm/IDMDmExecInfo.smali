.class public Lcom/idm/agent/dm/IDMDmExecInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private correlator:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->serverId:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->taskId:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->path:Ljava/lang/String;

    iput-object p4, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->correlator:Ljava/lang/String;

    iput-object p5, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public idmGetCorrelator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->correlator:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->data:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetServerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public idmSetCorrelator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->correlator:Ljava/lang/String;

    return-void
.end method

.method public idmSetData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->data:Ljava/lang/String;

    return-void
.end method

.method public idmSetPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public idmSetServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->serverId:Ljava/lang/String;

    return-void
.end method

.method public idmSetTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmExecInfo;->taskId:Ljava/lang/String;

    return-void
.end method
