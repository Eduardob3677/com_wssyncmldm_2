.class public interface abstract Lcom/idm/providers/mo/IDMMoDatabaseAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract idmChangeServerIdProfileTable(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmChangeServerIdProfileTableName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmChangeServerIdXFumoTable(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmChangeServerIdXNodeName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmChangeServerIdXnodeTable(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmIsSameDBTable(Ljava/lang/String;)Z
.end method

.method public abstract idmMoDatabaseBeginTransaction()V
.end method

.method public abstract idmMoDatabaseClose()V
.end method

.method public abstract idmMoDatabaseCreate(Ljava/lang/String;)Z
.end method

.method public abstract idmMoDatabaseCreate(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract idmMoDatabaseDelete(Ljava/lang/String;)Z
.end method

.method public abstract idmMoDatabaseDelete(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract idmMoDatabaseEndTransaction()V
.end method

.method public abstract idmMoDatabaseOpen()V
.end method

.method public abstract idmMoDatabaseSetTransactionSuccessful()V
.end method

.method public abstract idmMoDeleteNodeInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmMoForceDeleteAuthNodeInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmMoGetNodeInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;
.end method

.method public abstract idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;
.end method

.method public abstract idmMoGetNodeInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/idm/providers/mo/IDMMoNodeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;
.end method

.method public abstract idmMoInsertNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/idm/providers/mo/IDMMoNodeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract idmMoInsertXFumoInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmMoInsertXnodeInfo(Lcom/idm/providers/mo/IDMMoXnodeInfo;)V
.end method

.method public abstract idmMoIsExistDbTable(Ljava/lang/String;)Z
.end method

.method public abstract idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract idmMoUpdateNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmMoUpdateNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmMoUpdateXFumoInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract idmMoUpdateXnodeInfo(Ljava/lang/String;Lcom/idm/providers/mo/IDMMoXnodeInfo;)V
.end method

.method public abstract idmMoXFumoDelete(Ljava/lang/String;)V
.end method

.method public abstract idmMoXnodeDelete(Ljava/lang/String;)V
.end method

.method public abstract idmXfumoTableDelete()Z
.end method

.method public abstract idmXnodeDatabaseCreate()V
.end method

.method public abstract idmXnodeTableDelete()Z
.end method
