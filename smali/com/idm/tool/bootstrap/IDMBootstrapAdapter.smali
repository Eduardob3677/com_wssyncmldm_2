.class public Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;
.implements Lcom/idm/providers/mo/IDMMoInterface;


# instance fields
.field private moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

.field private moNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/providers/mo/IDMMoNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moNodeInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private idmBootstrapAddMoDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/idm/tool/bootstrap/IDMBootstrapInfo;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    move-object/from16 v2, p8

    const-string v3, "application/vnd.syncml.dmtnds+xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "bootstrap server id is empty"

    const/4 v9, 0x1

    if-eqz v3, :cond_3

    new-instance v3, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;

    invoke-direct {v3}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;-><init>()V

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    move-object/from16 v8, p6

    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v1, v5}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;->idmTndsXmlDecoder(Ljava/lang/String;Ljava/io/InputStream;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsGetNodeList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    new-instance v6, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v17

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object v18

    const/4 v14, 0x2

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {v0, v3}, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->idmGetNodeInfoListFindServerID(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetServerID(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v4, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoIsExistDbTable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v9}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetNeedDefaultNode(Z)V

    :cond_1
    iget-object v0, v0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_2
    new-instance v0, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;

    invoke-direct {v0, v4}, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v8, p6

    const-string v3, "application/vnd.syncml.dmtnds+wbxml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;

    invoke-direct {v3}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lcom/idm/adapter/common/IDMCommonUtils;->idmLibHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v1, v5}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;->idmTndsWbxmlDecoder(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsGetNodeList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    new-instance v6, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v17

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object v18

    const/4 v14, 0x2

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-direct {v0, v3}, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->idmGetNodeInfoListFindServerID(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2, v1}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetServerID(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v4, v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoIsExistDbTable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v9}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetNeedDefaultNode(Z)V

    :cond_5
    iget-object v0, v0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;

    invoke-direct {v0, v4}, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v10, v0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moNodeInfoList:Ljava/util/ArrayList;

    new-instance v11, Lcom/idm/providers/mo/IDMMoNodeInfo;

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return v9
.end method

.method private idmBootstrapDecoder([B)Lcom/idm/core/syncml/SyncML;
    .locals 0

    new-instance p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlParser;->idmSyncmlWbxmlDecoder([B)Lcom/idm/core/syncml/SyncML;

    move-result-object p0

    return-object p0
.end method

.method private idmBootstrapProcessAdd(Lcom/idm/core/syncml/Add;Lcom/idm/tool/bootstrap/IDMBootstrapInfo;)Z
    .locals 11

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetItemCount(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v10, 0x0

    move v0, v10

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v2

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v3

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result v7

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v2}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    move v2, v10

    :goto_1
    move-object v4, v0

    move-object v5, v1

    move v8, v2

    goto :goto_4

    :goto_2
    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v4, v0

    move-object v5, v1

    :goto_3
    move v8, v10

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    move-object v4, v0

    move-object v5, v4

    goto :goto_3

    :goto_4
    move-object v0, p0

    move-object v1, v9

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v8

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->idmBootstrapAddMoDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/idm/tool/bootstrap/IDMBootstrapInfo;)Z

    move-result v0

    goto :goto_0

    :cond_3
    return v0
.end method

.method private idmBootstrapProcessCmd(Lcom/idm/core/syncml/SyncML;Lcom/idm/tool/bootstrap/IDMBootstrapInfo;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetCmdCount(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Command;

    instance-of v2, v1, Lcom/idm/core/syncml/Add;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/idm/core/syncml/Add;

    invoke-direct {p0, v1, p2}, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->idmBootstrapProcessAdd(Lcom/idm/core/syncml/Add;Lcom/idm/tool/bootstrap/IDMBootstrapInfo;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moNodeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moNodeInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->idmGetNodeInfoListFindServerID(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetServerID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v1, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoIsExistDbTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetNeedDefaultNode(Z)V

    :cond_2
    iget-object p2, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object p2

    iget-object p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {p2, p1, p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;

    const-string p1, "bootstrap server id is empty"

    invoke-direct {p0, p1}, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return v0
.end method

.method private idmGetNodeInfoListFindServerID(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/providers/mo/IDMMoNodeInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ServerID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public idmBootstrapAdapterInstall([B)Lcom/idm/tool/bootstrap/IDMBootstrapInfo;
    .locals 3

    new-instance v0, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;

    invoke-direct {v0}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseOpen()V

    iget-object v1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseBeginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->idmBootstrapDecoder([B)Lcom/idm/core/syncml/SyncML;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/core/syncml/SyncHdr;->getVerDTD()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->idmBootstrapProcessCmd(Lcom/idm/core/syncml/SyncML;Lcom/idm/tool/bootstrap/IDMBootstrapInfo;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/idm/tool/bootstrap/IDMBootstrapInfo;->idmSetResult(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseSetTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseEndTransaction()V

    iget-object p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseClose()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance p1, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;

    const-string v0, "Not support DTD version!!!"

    invoke-direct {p1, v0}, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;

    const-string v0, "bootstrap parsing fail"

    invoke-direct {p1, v0}, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-instance v0, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;

    invoke-direct {v0, p1}, Lcom/idm/exception/bootstrap/IDMExceptionBootstrapFail;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseEndTransaction()V

    iget-object p0, p0, Lcom/idm/tool/bootstrap/IDMBootstrapAdapter;->moDataBaseManager:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-virtual {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseClose()V

    throw p1
.end method
