.class public Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->data:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public idmGetData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->data:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->format:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method public idmSetData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->data:Ljava/lang/String;

    return-void
.end method

.method public idmSetFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->format:Ljava/lang/String;

    return-void
.end method

.method public idmSetPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMDmAppSvcNodeInfo [Path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;->format:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
