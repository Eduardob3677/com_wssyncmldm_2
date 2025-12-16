.class public Lcom/idm/core/tnds/IDMTndsMgmtTree;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/tnds/IDMTndsNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verDTD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/core/tnds/IDMTndsMgmtTree;->nodeInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public idmTndsGetNodeList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/tnds/IDMTndsNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsMgmtTree;->nodeInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public idmTndsGetVerDTD()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsMgmtTree;->verDTD:Ljava/lang/String;

    return-object p0
.end method

.method public idmTndsSetNodeList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/tnds/IDMTndsNodeInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsMgmtTree;->nodeInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public idmTndsSetVerDTD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsMgmtTree;->verDTD:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MgmtTree [verDTD="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/core/tnds/IDMTndsMgmtTree;->verDTD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nodeInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsMgmtTree;->nodeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
