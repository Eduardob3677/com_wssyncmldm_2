.class public Lcom/idm/agent/dm/IDMDmCommandHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;
.implements Lcom/idm/agent/dm/IDMDmInterface;
.implements Lcom/idm/providers/mo/IDMMoInterface;
.implements Lcom/idm/agent/dm/uic/IDMDmUICInterface;


# instance fields
.field private actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

.field private appSvcNodeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private commandInterface:Lcom/idm/agent/dm/IDMDmCommandInterface;

.field private context:Landroid/content/Context;

.field private dmContinueProcess:Lcom/idm/agent/dm/IDMDmContinueProcess;

.field private execCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/agent/dm/IDMDmExecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private largeObjFilePath:Ljava/lang/String;

.field private largeObjSize:I

.field private largeObjUri:Ljava/lang/String;

.field private nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

.field private recvMaxObjSize:Ljava/lang/String;

.field private recvMsgID:Ljava/lang/String;

.field private responseCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;"
        }
    .end annotation
.end field

.field private uicResultStatus:Lo/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/util/ArrayList;Lcom/idm/agent/dm/IDMDmCommandInterface;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/idm/providers/mo/IDMMoDatabaseManager;Lcom/idm/agent/dm/IDMDmContinueProcess;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/idm/service/actioninfo/IDMActionInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;",
            "Lcom/idm/agent/dm/IDMDmCommandInterface;",
            "Ljava/util/ArrayList<",
            "Lcom/idm/agent/dm/IDMDmExecInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;",
            ">;",
            "Lcom/idm/providers/mo/IDMMoDatabaseManager;",
            "Lcom/idm/agent/dm/IDMDmContinueProcess;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->execCommand:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/k;-><init>()V

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->recvMsgID:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->recvMaxObjSize:Ljava/lang/String;

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    iput-object p3, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p7}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iput-object p4, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->commandInterface:Lcom/idm/agent/dm/IDMDmCommandInterface;

    iput-object p5, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->execCommand:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->dmContinueProcess:Lcom/idm/agent/dm/IDMDmContinueProcess;

    return-void
.end method

.method private idmCheckAccessibleNode(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/AAuthSecret"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "/AAuthData"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "./Inbox"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private idmCmdUicAlert(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    invoke-virtual {v0, p1}, Lo/k;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "200"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private idmCommandResultStatus()Z
    .locals 1

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/core/syncml/Status;

    invoke-virtual {p0}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object p0

    const-string v0, "200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private idmGetCommandData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Command;

    instance-of v1, v0, Lcom/idm/core/syncml/Status;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/idm/core/syncml/Status;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "command data : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-object p0
.end method

.method private idmGetParentAcl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v4, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetAcl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "node : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Acl : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private idmGetRecvMaxObjSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->recvMaxObjSize:Ljava/lang/String;

    return-object p0
.end method

.method private idmGetRecvMsgID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->recvMsgID:Ljava/lang/String;

    return-object p0
.end method

.method private idmGetTNDSFlag(Ljava/lang/String;)I
    .locals 8

    const-string p0, "+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "Value"

    const-string v1, "Type"

    const-string v2, "Format"

    const-string v3, "ACL"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_4

    const-string p0, "\\+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-le p1, v4, :cond_b

    :goto_0
    array-length p1, p0

    if-ge v4, p1, :cond_b

    aget-object p1, p0, v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    or-int/lit8 p1, v5, 0x1

    :goto_1
    move v5, p1

    goto :goto_2

    :cond_0
    aget-object p1, p0, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit8 p1, v5, 0x2

    goto :goto_1

    :cond_1
    aget-object p1, p0, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 p1, v5, 0x4

    goto :goto_1

    :cond_2
    aget-object p1, p0, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit8 p1, v5, 0x8

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string p0, "-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0xf

    if-eqz v6, :cond_9

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-le p1, v4, :cond_a

    :goto_3
    array-length p1, p0

    if-ge v4, p1, :cond_a

    aget-object p1, p0, v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    xor-int/lit8 p1, v7, 0x1

    :goto_4
    move v7, p1

    goto :goto_5

    :cond_5
    aget-object p1, p0, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    xor-int/lit8 p1, v7, 0x2

    goto :goto_4

    :cond_6
    aget-object p1, p0, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    xor-int/lit8 p1, v7, 0x4

    goto :goto_4

    :cond_7
    aget-object p1, p0, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    xor-int/lit8 p1, v7, 0x8

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    const-string p0, "TNDS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v5, v7

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "tndsFlag : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return v5
.end method

.method private idmMakeAddResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    move/from16 v3, p5

    move-object/from16 v10, p6

    const-string v4, "/"

    const-string v5, "_"

    const-string v6, "szReplaceData.length : "

    const-string v7, "largeObjFilePath : "

    const-string v8, "largeObjUri : "

    const-string v11, "largeObjSize : "

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "500"

    const-string v15, "Add"

    if-eqz v13, :cond_0

    const-string v0, "locURI is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v13, "404"

    const-string v9, "213"

    move-object/from16 v16, v6

    const-string v6, "425"

    move-object/from16 v17, v13

    const-string v13, "418"

    if-eqz p7, :cond_5

    if-lez v3, :cond_5

    :try_start_0
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    move-object/from16 v18, v9

    iget-object v9, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v9}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9, v12}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {v1, v15, v2, v12, v13}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-object v3, v6

    goto/16 :goto_9

    :catch_2
    move-object/from16 v3, v17

    goto/16 :goto_a

    :cond_1
    :try_start_1
    invoke-direct {v1, v12}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetParentAcl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v1, v15, v2, v12, v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_3
    move-object/from16 v14, v17

    goto/16 :goto_1

    :cond_2
    :try_start_2
    iput v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    iput-object v12, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/high16 v3, 0x100000

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetRecvMaxObjSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    iget v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    if-le v0, v3, :cond_4

    const-string v0, "Large object size is over then MAX object size"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileDelete(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmAppendFileWrite(Ljava/lang/String;[B)V

    move-object/from16 v3, v18

    invoke-direct {v1, v15, v2, v12, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_b

    :goto_1
    :try_start_5
    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_5
    move-object v3, v14

    goto/16 :goto_a

    :cond_5
    move-object v3, v9

    move-object/from16 v14, v17

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p7, :cond_6

    const-string v0, "append large object data"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmAppendFileWrite(Ljava/lang/String;[B)V

    invoke-direct {v1, v15, v2, v12, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_6
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v11, "200"

    if-eqz v0, :cond_8

    :try_start_6
    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmGetToStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", largeObjSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    if-ne v3, v4, :cond_7

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16
    :try_end_6
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object/from16 v5, p2

    move-object v9, v6

    move-object v6, v7

    move v7, v8

    move-object/from16 v8, p3

    move-object/from16 v19, v9

    move-object/from16 v9, p4

    move-object/from16 v17, v14

    move-object v14, v11

    move/from16 v11, v16

    :try_start_7
    invoke-interface/range {v3 .. v11}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_6
    move-object/from16 v3, v19

    goto/16 :goto_9

    :cond_7
    move-object/from16 v19, v6

    move-object/from16 v17, v14

    const-string v3, "large object file size is mismatch"

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const-string v3, "424"

    invoke-direct {v1, v15, v2, v12, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileDelete(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_8
    move-object/from16 v19, v6

    move-object/from16 v17, v14

    move-object v14, v11

    const-string v0, "application/vnd.syncml.dmtnds+xml"

    move-object/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v12, v3}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;->idmTndsXmlDecoder(Ljava/lang/String;Ljava/io/InputStream;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsGetNodeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    new-instance v5, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v27

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object v28

    const/16 v24, 0x2

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v28}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_a
    const-string v0, "application/vnd.syncml.dmtnds+wbxml"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lcom/idm/adapter/common/IDMCommonUtils;->idmLibHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v12, v3}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;->idmTndsWbxmlDecoder(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsGetNodeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    new-instance v5, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v27

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object v28

    const/16 v24, 0x2

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v28}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->commandInterface:Lcom/idm/agent/dm/IDMDmCommandInterface;

    if-eqz v0, :cond_10

    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-interface {v0, v3, v12, v10}, Lcom/idm/agent/dm/IDMDmCommandInterface;->idmProcessAdd(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v3, "APPLICABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    goto :goto_6

    :sswitch_1
    const-string v3, "N/A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_6

    :sswitch_2
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v5

    goto :goto_6

    :sswitch_3
    const-string v3, "APPLICABLE_NOUPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v3, -0x1

    :goto_6
    if-eqz v3, :cond_10

    if-eq v3, v5, :cond_10

    const/4 v5, 0x2

    if-eq v3, v5, :cond_f

    if-eq v3, v4, :cond_e

    invoke-direct {v1, v15, v2, v12, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    new-instance v3, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;

    move-object/from16 v8, p3

    invoke-direct {v3, v12, v10, v8}, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application Node, No Update MO"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_f
    move-object/from16 v8, p3

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    new-instance v3, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;

    invoke-direct {v3, v12, v10, v8}, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "application Node"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    move-object/from16 v8, p3

    :goto_7
    iget-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v11}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v15, v2, v12, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionAlreadyExist; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_b

    :goto_8
    const-string v3, "215"

    invoke-direct {v1, v15, v2, v12, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_7
    invoke-direct {v1, v15, v2, v12, v13}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_9
    invoke-direct {v1, v15, v2, v12, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    invoke-direct {v1, v15, v2, v12, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x45c40996 -> :sswitch_3
        0xc1b2 -> :sswitch_2
        0x12ac0 -> :sswitch_1
        0x7207f9f -> :sswitch_0
    .end sparse-switch
.end method

.method private idmMakeAlertResponse(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Alert"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "200"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "215"

    invoke-direct {p0, v0, p1, v1, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private idmMakeAlertResponse(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICResult;)V
    .locals 6

    :try_start_0
    const-string v1, "Alert"

    invoke-virtual {p2}, Lcom/idm/agent/dm/uic/IDMDmUICResult;->idmGetStatusCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/idm/agent/dm/uic/IDMDmUICResult;->idmGetDataList()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x0

    const-string v1, "215"

    const-string v2, "Alert"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private idmMakeCommandAtomicRollback(I)V
    .locals 3

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int p1, v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Status;

    invoke-virtual {v1}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Status;

    const-string v2, "216"

    invoke-virtual {v1, v2}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private idmMakeCopyResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    const-string v0, "node"

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "locURI and sourcelocURI is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string v2, "Copy"

    const-string v6, "500"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v2, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v14, p3

    invoke-interface {v1, v2, v14}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Copy"

    const-string v6, "215"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    iget-object v2, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v3, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v15}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v3, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v15}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "Copy"

    const-string v6, "215"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v8, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v0, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetAcl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetScope()I

    move-result v12

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0x0

    move-object/from16 v10, p2

    move-object v14, v0

    move-object v6, v15

    move-object v15, v1

    :try_start_1
    invoke-interface/range {v8 .. v16}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "Copy"

    const-string v0, "200"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v15, v6

    move-object v6, v0

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v15, v6

    goto/16 :goto_0

    :cond_3
    const-string v0, "/"

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v3, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v2, "Copy"

    const-string v6, "500"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_4
    :try_start_3
    invoke-direct {v7, v15}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetParentAcl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Add"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v2, "Copy"

    const-string v6, "425"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :cond_5
    :try_start_4
    iget-object v8, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v0, v7, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetAcl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetScope()I

    move-result v12

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    move-object/from16 v10, p2

    move-object v15, v0

    invoke-interface/range {v8 .. v16}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "Copy"

    const-string v6, "200"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    const-string v2, "Copy"

    const-string v6, "404"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :goto_0
    const-string v2, "Copy"

    const-string v6, "500"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private idmMakeDeleteResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Delete"

    if-eqz v0, :cond_0

    const-string v0, "locURI is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string v0, "500"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDeleteNodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "200"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotAllow; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "215"

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const-string v0, "425"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string v0, "405"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string v0, "404"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private idmMakeExecResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "500"

    const-string v2, "Exec"

    if-eqz v0, :cond_0

    const-string p2, "locURI is null"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0, v2, p1, p3, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2, p1, p3, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetScope()I

    move-result v3

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetAcl()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string p2, "Target is PermanentNode Fail"

    invoke-static {p2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string p2, "405"

    invoke-direct {p0, v2, p1, p3, p2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p2, "425"

    invoke-direct {p0, v2, p1, p3, p2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->commandInterface:Lcom/idm/agent/dm/IDMDmCommandInterface;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-interface {v0, v3, p3}, Lcom/idm/agent/dm/IDMDmCommandInterface;->idmProcessExec(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->execCommand:Ljava/util/ArrayList;

    new-instance v1, Lcom/idm/agent/dm/IDMDmExecInfo;

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v1

    move-object v6, p3

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/idm/agent/dm/IDMDmExecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->dmContinueProcess:Lcom/idm/agent/dm/IDMDmContinueProcess;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/idm/agent/dm/IDMDmContinueProcess;->idmGetProcessAsyncExecStatus()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p1, p3, p2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p2, "202"

    invoke-direct {p0, v2, p1, p3, p2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    const-string p2, "200"

    invoke-direct {p0, v2, p1, p3, p2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v2, p1, p3, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v2, p1, p3, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    const-string p2, "404"

    invoke-direct {p0, v2, p1, p3, p2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private idmMakeGetResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "Get"

    const-string v1, "Not support property : "

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "locURI is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v2, 0x3d

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3f

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v3, :cond_1

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v3, v4

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v2, p2

    goto :goto_0

    :cond_2
    move-object v2, p2

    move-object v3, v4

    :goto_1
    :try_start_0
    invoke-direct {p0, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCheckAccessibleNode(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "405"

    if-nez v5, :cond_3

    :try_start_1
    invoke-direct {p0, v0, p1, p2, v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p1, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeGetResponseCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v5, "prop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, p1, p2, v2, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeGetResponseCommandProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v5, "list"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Struct"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "StructData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const-string v3, "TNDS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1, p2, v2, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeGetResponseCommandTNDS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, v0, p1, p2, v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_2
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeGetResponseCommandStructure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    const-string v2, "215"

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    const-string v1, "425"

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    const-string v1, "404"

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private idmMakeGetResponseCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "idmMakeGetResponseCommand"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "nodeInfoList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "nodeInfoList size is 0"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetDepth()I

    move-result v2

    const-string v3, "node"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Get"

    if-eqz v3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetDepth()I

    move-result v8

    sub-int/2addr v8, v1

    if-ne v2, v8, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0x2f

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v7, p3

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->commandInterface:Lcom/idm/agent/dm/IDMDmCommandInterface;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-interface {v0, v2, p2}, Lcom/idm/agent/dm/IDMDmCommandInterface;->idmProcessGet(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMoNodeGetData(Lcom/idm/providers/mo/IDMMoNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMoNodeGetData(Lcom/idm/providers/mo/IDMMoNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    const/high16 p3, 0x100000

    :try_start_0
    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetRecvMaxObjSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p3, :cond_9

    const-string p3, "413"

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    move-object v7, v0

    :goto_3
    const-string p3, "200"

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private idmMakeGetResponseCommandProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "idmMakeGetResponseCommandProperty"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p0, "nodeInfo is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetAcl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ACL"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "200"

    const-string v2, "Get"

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "Format"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "Name"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "Type"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v4, v7

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "Size"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p4, "node"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p3, "406"

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_0

    :cond_6
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v4, v7

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string p3, "405"

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not support property : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private idmMakeGetResponseCommandStructure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "idmMakeGetResponseCommandStructure"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "nodeInfoList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "nodeInfoList size is 0"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    const-string p0, "property is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "Get"

    const-string v2, "200"

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetType()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->commandInterface:Lcom/idm/agent/dm/IDMDmCommandInterface;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-interface {v1, v2, v3}, Lcom/idm/agent/dm/IDMDmCommandInterface;->idmProcessGet(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "N/A"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMoNodeGetData(Lcom/idm/providers/mo/IDMMoNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_4
    move-object v6, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMoNodeGetData(Lcom/idm/providers/mo/IDMMoNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    const-string v0, "Struct"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCheckAccessibleNode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "StructData"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCheckAccessibleNode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p0, "Not support property : "

    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private idmMakeGetResponseCommandTNDS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "idmMakeGetResponseCommandTNDS"

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v3, v0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v3}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-interface {v2, v3, v4}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "nodeInfoList is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "nodeInfoList size is 0"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "property is invalid"

    if-eqz v1, :cond_4

    invoke-direct {v0, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetTNDSFlag(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v3, "Get"

    const-string v5, "200"

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct {v0, v3, v6, v7, v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;

    invoke-direct {v3}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/idm/providers/mo/IDMMoNodeInfo;

    new-instance v15, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetAcl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetDepth()I

    move-result v14

    invoke-virtual {v7}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object v7

    move-object v8, v15

    move-object v0, v15

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/idm/core/tnds/IDMTndsNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v5, v1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;->idmTndsXmlEncoder(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "xml"

    const-string v7, "application/vnd.syncml.dmtnds+xml"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private idmMakeReplaceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 11

    move-object v2, p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "locURI is null"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string v0, "Replace"

    const-string v1, "500"

    move-object v3, p0

    move-object v4, p1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v3, p0

    move-object v4, p1

    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_2

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3f

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v1, :cond_1

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v0, v5

    move-object v6, v0

    goto :goto_0

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v4, v5

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeReplaceResponseCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    const-string v1, "prop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object/from16 v4, p6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeReplaceResponseCommandProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private idmMakeReplaceResponseCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "/"

    const-string v8, "_"

    const-string v9, "szReplaceData.length : "

    const-string v10, "largeObjFilePath : "

    const-string v11, "largeObjUri : "

    const-string v12, "largeObjSize : "

    const-string v13, "idmMakeReplaceResponseCommand"

    invoke-static {v13}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string v13, "213"

    const-string v14, "425"

    const-string v15, "Replace"

    if-eqz p7, :cond_5

    if-lez v5, :cond_5

    :try_start_0
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetScope()I

    move-result v4

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetAcl()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    const-string v0, "Target is PermanentNode Fail"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string v0, "405"

    invoke-direct {v1, v15, v2, v3, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v1, v15, v2, v3, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {v1, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetParentAcl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v1, v15, v2, v3, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iput v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    iput-object v3, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v4}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v4, 0x100000

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetRecvMaxObjSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    iget v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    if-le v0, v4, :cond_4

    const-string v0, "Large object size is over then MAX object size"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const-string v0, "500"

    invoke-direct {v1, v15, v2, v3, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileDelete(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmAppendFileWrite(Ljava/lang/String;[B)V

    invoke-direct {v1, v15, v2, v3, v13}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    iget-object v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p7, :cond_6

    const-string v0, "append large object data"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmAppendFileWrite(Ljava/lang/String;[B)V

    invoke-direct {v1, v15, v2, v3, v13}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    iget-object v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjUri:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x0

    const-string v8, "200"

    if-eqz v5, :cond_8

    :try_start_3
    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmGetToStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", largeObjSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjSize:I

    if-ne v5, v6, :cond_7

    iget-object v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v6, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v6}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3, v4, v7}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v15, v2, v3, v8}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v4, "large object file size is mismatch"

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const-string v4, "424"

    invoke-direct {v1, v15, v2, v3, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->largeObjFilePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmFileDelete(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    const-string v5, "application/vnd.syncml.dmtnds+xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;-><init>()V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3, v4}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;->idmTndsXmlDecoder(Ljava/lang/String;Ljava/io/InputStream;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsGetNodeList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    new-instance v6, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v23

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object v24

    const/16 v20, 0x2

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v24}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v1, v15, v2, v3, v8}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    const-string v5, "application/vnd.syncml.dmtnds+wbxml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lcom/idm/adapter/common/IDMCommonUtils;->idmLibHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3, v4}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;->idmTndsWbxmlDecoder(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsGetNodeList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    new-instance v6, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v23

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object v24

    const/16 v20, 0x2

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v24}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v0, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v5}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v1, v15, v2, v3, v8}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_c
    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->commandInterface:Lcom/idm/agent/dm/IDMDmCommandInterface;

    if-eqz v4, :cond_13

    iget-object v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-interface {v4, v5, v3, v6}, Lcom/idm/agent/dm/IDMDmCommandInterface;->idmProcessReplace(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "APPLICABLE_NOUPDATE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    new-instance v5, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;

    invoke-direct {v5, v3, v6, v0}, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v1, v15, v2, v3, v8}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application Node, No Update MO"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v5, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v9, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v9}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v3, v6, v7}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v7, 0x12ac0

    if-eq v5, v7, :cond_f

    const v7, 0x7207f9f

    if-eq v5, v7, :cond_e

    goto :goto_4

    :cond_e
    const-string v5, "APPLICABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v9, 0x1

    goto :goto_5

    :cond_f
    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v9, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v9, -0x1

    :goto_5
    if-eqz v9, :cond_12

    const/4 v5, 0x1

    if-eq v9, v5, :cond_11

    invoke-direct {v1, v15, v2, v3, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    iget-object v4, v1, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    new-instance v5, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;

    invoke-direct {v5, v3, v6, v0}, Lcom/idm/agent/dm/IDMDmAppSvcNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v1, v15, v2, v3, v8}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application Node"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    invoke-direct {v1, v15, v2, v3, v8}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :goto_6
    const-string v4, "215"

    invoke-direct {v1, v15, v2, v3, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_2
    const-string v0, "404"

    invoke-direct {v1, v15, v2, v3, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_3
    invoke-direct {v1, v15, v2, v3, v14}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_7
    return-void
.end method

.method private idmMakeReplaceResponseCommandProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "425"

    const-string v1, "idmMakeReplaceResponseCommandProperty"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const-string v1, "ACL"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "405"

    const-string v3, "Replace"

    if-eqz v1, :cond_2

    :try_start_0
    iget-object p5, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1, p3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p5

    invoke-virtual {p5}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetScope()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const-string p3, "Target is PermanentNode Fail"

    invoke-static {p3}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "node"

    invoke-virtual {p5}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetFormat()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetParentAcl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    invoke-direct {p0, v3, p1, p2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p5, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->actionInfo:Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p5, v1, p3, v2, p4}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "200"

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0, v3, p1, p2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p3, "404"

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, p1, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not support property : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private idmMakeResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "idmMakeResults"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/core/syncml/Results;

    invoke-direct {v0}, Lcom/idm/core/syncml/Results;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetRecvMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/core/syncml/Item;

    invoke-direct {p1}, Lcom/idm/core/syncml/Item;-><init>()V

    new-instance v1, Lcom/idm/core/syncml/Source;

    invoke-direct {v1}, Lcom/idm/core/syncml/Source;-><init>()V

    invoke-virtual {v1, p2}, Lcom/idm/core/syncml/Location;->setLocURI(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/idm/core/syncml/Item;->setSource(Lcom/idm/core/syncml/Source;)V

    invoke-virtual {p1, p5}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    new-instance p2, Lcom/idm/core/syncml/Meta;

    invoke-direct {p2}, Lcom/idm/core/syncml/Meta;-><init>()V

    invoke-virtual {p2, p3}, Lcom/idm/core/syncml/Meta;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    const-string p4, "node"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/idm/core/syncml/Meta;->setSize(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/idm/core/syncml/Item;->setMeta(Lcom/idm/core/syncml/Meta;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "idmMakeStatus"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/core/syncml/Status;

    invoke-direct {v0}, Lcom/idm/core/syncml/Status;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetRecvMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/idm/core/syncml/Status;->setCmd(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "idmMakeStatus"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/core/syncml/Status;

    invoke-direct {v0}, Lcom/idm/core/syncml/Status;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetRecvMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/idm/core/syncml/Status;->setCmd(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "idmMakeStatus"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/core/syncml/Status;

    invoke-direct {v0}, Lcom/idm/core/syncml/Status;-><init>()V

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetRecvMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/idm/core/syncml/Status;->setCmd(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p3, Lcom/idm/core/syncml/Item;

    invoke-direct {p3}, Lcom/idm/core/syncml/Item;-><init>()V

    invoke-virtual {p3, p2}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private idmSaveCmdUicAlertStatus(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    const-string p1, "Atomic"

    invoke-virtual {p0, p1, p2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    const-string p1, "Sequence"

    invoke-virtual {p0, p1, p2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    const-string p1, "SyncBody"

    invoke-virtual {p0, p1, p2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private idmSetCommandData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "idmSetCommandData"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Command;

    instance-of v1, v0, Lcom/idm/core/syncml/Status;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/idm/core/syncml/Status;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private idmVerifyUpperTag(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "Atomic"

    return-object p0

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    const-string p0, "Sequence"

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "SyncBody"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private idmWriteFile(Ljava/lang/String;[BZ)V
    .locals 1

    :try_start_0
    new-instance p0, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public idmAuthTypeConvertValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "syncml:auth-md5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p0, "syncml:auth-MAC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p0, "syncml:auth-basic"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "NONE"

    return-object p0

    :pswitch_0
    const-string p0, "DIGEST"

    return-object p0

    :pswitch_1
    const-string p0, "HMAC"

    return-object p0

    :pswitch_2
    const-string p0, "BASIC"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x731ed637 -> :sswitch_2
        -0x971d676 -> :sswitch_1
        -0x9715a27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public idmMoNodeGetData(Lcom/idm/providers/mo/IDMMoNodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/AAuthType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmAuthTypeConvertValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public idmProcessAdd(Lcom/idm/core/syncml/Add;II)V
    .locals 10

    const-string v0, "idmProcessAdd"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Item;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result v7

    const/4 v0, 0x0

    const-string v3, "Add"

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v4

    move-object v4, v0

    goto :goto_3

    :goto_2
    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v9, v4

    move-object v4, v5

    :goto_3
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const-string v0, "401"

    goto :goto_4

    :cond_3
    const-string v0, "407"

    :goto_4
    invoke-direct {p0, v3, v8, v2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    const-string v1, "215"

    if-eq p3, v0, :cond_7

    const/4 v0, 0x4

    if-ne p3, v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v3, v8, v2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, v8

    move-object v3, v4

    move-object v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeAddResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0

    :cond_7
    :goto_5
    invoke-direct {p0, v3, v8, v2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "404"

    invoke-direct {p0, v3, v8, v0, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public idmProcessAlert(Lcom/idm/core/syncml/Alert;II)V
    .locals 4

    const-string v0, "idmProcessAlert"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Alert"

    if-eq p2, v1, :cond_2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const-string p1, "401"

    goto :goto_0

    :cond_1
    const-string p1, "407"

    :goto_0
    invoke-direct {p0, v3, v0, v2, p1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p2, 0x2

    const-string v1, "215"

    if-eq p3, p2, :cond_a

    const/4 p2, 0x4

    if-ne p3, p2, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getData()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1100"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "1101"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "1102"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "1103"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "1104"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string p2, "1222"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "ALERT_NEXT_MESSAGE"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeAlertResponse(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p2, "1223"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "ALERT_SESSION_ABORT"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeAlertResponse(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_1
    new-instance v1, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;

    invoke-direct {v1}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmDecode(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/idm/agent/dm/uic/IDMDmUICInfo;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p0, "uicInfo is null..."

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_8
    new-instance p2, Lcom/idm/agent/dm/uic/IDMDmUICTaskThread;

    iget-object v1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->context:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Lcom/idm/agent/dm/uic/IDMDmUICTaskThread;-><init>(Landroid/content/Context;Lcom/idm/agent/dm/uic/IDMDmUICInfo;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    const-string p1, "uicTaskThread join Finish !!!"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/idm/agent/dm/uic/IDMDmUICTaskThread;->idmGetUicResult()Lcom/idm/agent/dm/uic/IDMDmUICResult;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeAlertResponse(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICResult;)V

    invoke-virtual {p1}, Lcom/idm/agent/dm/uic/IDMDmUICResult;->idmGetStatusCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmSaveCmdUicAlertStatus(ILjava/lang/String;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    invoke-direct {p0, v3, v0, v2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmProcessAtomic(Lcom/idm/core/syncml/Atomic;II)V
    .locals 9

    const-string v0, "idmProcessAtomic"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseBeginTransaction()V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backUpApplicationNodeSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Atomic"

    const/4 v6, 0x2

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_1

    const-string p3, "401"

    goto :goto_0

    :cond_1
    const-string p3, "407"

    :goto_0
    invoke-direct {p0, v5, v1, v4, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne p3, v3, :cond_3

    const-string p3, "500"

    invoke-direct {p0, v5, v1, v4, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move p3, v6

    goto :goto_4

    :cond_3
    const-string v7, "215"

    if-eq p3, v6, :cond_6

    const/4 v8, 0x4

    if-ne p3, v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-direct {p0, v5, v1, v4, v7}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v5, v1, v4, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move p3, v3

    goto :goto_4

    :cond_6
    :goto_3
    invoke-direct {p0, v5, v1, v4, v7}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_4
    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/idm/core/syncml/Command;

    instance-of v8, v7, Lcom/idm/core/syncml/Get;

    if-eqz v8, :cond_8

    move-object v8, v7

    check-cast v8, Lcom/idm/core/syncml/Get;

    invoke-virtual {p0, v8, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessGet(Lcom/idm/core/syncml/Get;II)V

    if-eq p3, v6, :cond_8

    move p3, v6

    :cond_8
    instance-of v8, v7, Lcom/idm/core/syncml/Exec;

    if-eqz v8, :cond_9

    check-cast v7, Lcom/idm/core/syncml/Exec;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessExec(Lcom/idm/core/syncml/Exec;II)V

    if-eq p3, v6, :cond_7

    :goto_6
    move p3, v6

    goto :goto_5

    :cond_9
    instance-of v8, v7, Lcom/idm/core/syncml/Replace;

    if-eqz v8, :cond_a

    check-cast v7, Lcom/idm/core/syncml/Replace;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessReplace(Lcom/idm/core/syncml/Replace;II)V

    if-eq p3, v6, :cond_7

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCommandResultStatus()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_a
    instance-of v8, v7, Lcom/idm/core/syncml/Add;

    if-eqz v8, :cond_b

    check-cast v7, Lcom/idm/core/syncml/Add;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAdd(Lcom/idm/core/syncml/Add;II)V

    if-eq p3, v6, :cond_7

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCommandResultStatus()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_b
    instance-of v8, v7, Lcom/idm/core/syncml/Delete;

    if-eqz v8, :cond_c

    check-cast v7, Lcom/idm/core/syncml/Delete;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessDelete(Lcom/idm/core/syncml/Delete;II)V

    if-eq p3, v6, :cond_7

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCommandResultStatus()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_c
    instance-of v8, v7, Lcom/idm/core/syncml/Copy;

    if-eqz v8, :cond_d

    check-cast v7, Lcom/idm/core/syncml/Copy;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessCopy(Lcom/idm/core/syncml/Copy;II)V

    if-eq p3, v6, :cond_7

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCommandResultStatus()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_d
    instance-of v8, v7, Lcom/idm/core/syncml/Alert;

    if-eqz v8, :cond_e

    check-cast v7, Lcom/idm/core/syncml/Alert;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAlert(Lcom/idm/core/syncml/Alert;II)V

    if-eq p3, v6, :cond_7

    invoke-direct {p0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCommandResultStatus()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_e
    instance-of v8, v7, Lcom/idm/core/syncml/Atomic;

    if-eqz v8, :cond_f

    check-cast v7, Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAtomic(Lcom/idm/core/syncml/Atomic;II)V

    goto :goto_6

    :cond_f
    instance-of v8, v7, Lcom/idm/core/syncml/Sequence;

    if-eqz v8, :cond_7

    check-cast v7, Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p0, v7, p2, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessSequence(Lcom/idm/core/syncml/Sequence;II)V

    goto :goto_6

    :cond_10
    if-eq p2, v2, :cond_11

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseEndTransaction()V

    goto :goto_8

    :cond_11
    if-ne p3, v3, :cond_12

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseSetTransactionSuccessful()V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseEndTransaction()V

    const-string p1, "200"

    invoke-direct {p0, v5, v1, p1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmSetCommandData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->nodeInfoAdapter:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseEndTransaction()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeCommandAtomicRollback(I)V

    iget-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_7
    if-le p1, v0, :cond_13

    iget-object p2, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->appSvcNodeInfo:Ljava/util/ArrayList;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :cond_13
    invoke-direct {p0, v5, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmGetCommandData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "507"

    invoke-direct {p0, v5, v1, p1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmSetCommandData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_8
    invoke-virtual {p0, v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmUicAlertResultClear(Ljava/lang/String;)V

    return-void
.end method

.method public idmProcessCopy(Lcom/idm/core/syncml/Copy;II)V
    .locals 7

    const-string v0, "idmProcessCopy"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Item;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v0

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "401"

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_1
    const-string v0, "407"

    goto :goto_1

    :goto_2
    const-string v1, "Copy"

    move-object v0, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v1, "Copy"

    const-string v5, "215"

    move-object v0, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v6, v3, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeCopyResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_3
    const-string v1, "Copy"

    const-string v5, "215"

    move-object v0, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_4

    :cond_7
    move-object v3, v2

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_8
    move-object v4, v2

    :goto_5
    const-string v1, "Copy"

    const-string v5, "404"

    move-object v0, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    return-void
.end method

.method public idmProcessDelete(Lcom/idm/core/syncml/Delete;II)V
    .locals 5

    const-string v0, "idmProcessDelete"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v1

    const-string v2, "Delete"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    const-string v3, "401"

    goto :goto_1

    :cond_1
    const-string v3, "407"

    :goto_1
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    const-string v4, "215"

    if-eq p3, v3, :cond_5

    const/4 v3, 0x4

    if-ne p3, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeDeleteResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_2
    invoke-direct {p0, v2, v0, v1, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    const-string v3, "404"

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public idmProcessExec(Lcom/idm/core/syncml/Exec;II)V
    .locals 7

    const-string v0, "idmProcessExec"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Exec;->getCorrelator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/core/syncml/Item;

    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v3

    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Exec"

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq p2, v5, :cond_2

    if-ne p2, v6, :cond_1

    const-string v2, "401"

    goto :goto_1

    :cond_1
    const-string v2, "407"

    :goto_1
    invoke-direct {p0, v4, v0, v3, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p3, v6, :cond_3

    const-string v2, "500"

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    const-string v6, "215"

    if-eq p3, v5, :cond_6

    const/4 v5, 0x4

    if-ne p3, v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v4, v0, v3, v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeExecResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_2
    invoke-direct {p0, v4, v0, v3, v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    const-string v3, "404"

    invoke-direct {p0, v4, v0, v2, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public idmProcessGet(Lcom/idm/core/syncml/Get;II)V
    .locals 5

    const-string v0, "idmProcessGet"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v1

    const-string v2, "Get"

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v4, :cond_1

    const-string v3, "401"

    goto :goto_1

    :cond_1
    const-string v3, "407"

    :goto_1
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p3, v4, :cond_3

    const-string v3, "500"

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    const-string v4, "215"

    if-eq p3, v3, :cond_6

    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeGetResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_2
    invoke-direct {p0, v2, v0, v1, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    const-string v3, "404"

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public idmProcessReplace(Lcom/idm/core/syncml/Replace;II)V
    .locals 10

    const-string v0, "idmProcessReplace"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Item;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result v7

    const/4 v0, 0x0

    const-string v3, "Replace"

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v4

    move-object v4, v0

    goto :goto_3

    :goto_2
    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v5, v0

    move v9, v4

    move-object v4, v5

    :goto_3
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const-string v0, "401"

    goto :goto_4

    :cond_3
    const-string v0, "407"

    :goto_4
    invoke-direct {p0, v3, v8, v2, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    const-string v1, "215"

    if-eq p3, v0, :cond_7

    const/4 v0, 0x4

    if-ne p3, v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v3, v8, v2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, v8

    move-object v3, v4

    move-object v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeReplaceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0

    :cond_7
    :goto_5
    invoke-direct {p0, v3, v8, v2, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "404"

    invoke-direct {p0, v3, v8, v0, v1}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public idmProcessSequence(Lcom/idm/core/syncml/Sequence;II)V
    .locals 7

    const-string v0, "idmProcessSequence"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->responseCommandList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "responseCommandList is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "Sequence"

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_1

    const-string p3, "401"

    goto :goto_0

    :cond_1
    const-string p3, "407"

    :goto_0
    invoke-direct {p0, v4, v0, v3, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x4

    if-ne p3, v1, :cond_3

    const-string p3, "500"

    invoke-direct {p0, v4, v0, v3, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v5

    goto :goto_3

    :cond_3
    const/4 v1, 0x2

    const-string v6, "215"

    if-eq p3, v1, :cond_6

    if-ne p3, v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmVerifyUpperTag(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmCmdUicAlert(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "Atomic"

    invoke-direct {p0, p3, v0, v3, v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p3, "200"

    invoke-direct {p0, v4, v0, v3, p3}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, v4, v0, v3, v6}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmMakeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/idm/core/syncml/Command;

    instance-of v0, p3, Lcom/idm/core/syncml/Get;

    if-eqz v0, :cond_8

    check-cast p3, Lcom/idm/core/syncml/Get;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessGet(Lcom/idm/core/syncml/Get;II)V

    goto :goto_4

    :cond_8
    instance-of v0, p3, Lcom/idm/core/syncml/Replace;

    if-eqz v0, :cond_9

    check-cast p3, Lcom/idm/core/syncml/Replace;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessReplace(Lcom/idm/core/syncml/Replace;II)V

    goto :goto_4

    :cond_9
    instance-of v0, p3, Lcom/idm/core/syncml/Exec;

    if-eqz v0, :cond_a

    check-cast p3, Lcom/idm/core/syncml/Exec;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessExec(Lcom/idm/core/syncml/Exec;II)V

    goto :goto_4

    :cond_a
    instance-of v0, p3, Lcom/idm/core/syncml/Add;

    if-eqz v0, :cond_b

    check-cast p3, Lcom/idm/core/syncml/Add;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAdd(Lcom/idm/core/syncml/Add;II)V

    goto :goto_4

    :cond_b
    instance-of v0, p3, Lcom/idm/core/syncml/Delete;

    if-eqz v0, :cond_c

    check-cast p3, Lcom/idm/core/syncml/Delete;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessDelete(Lcom/idm/core/syncml/Delete;II)V

    goto :goto_4

    :cond_c
    instance-of v0, p3, Lcom/idm/core/syncml/Copy;

    if-eqz v0, :cond_d

    check-cast p3, Lcom/idm/core/syncml/Copy;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessCopy(Lcom/idm/core/syncml/Copy;II)V

    goto :goto_4

    :cond_d
    instance-of v0, p3, Lcom/idm/core/syncml/Alert;

    if-eqz v0, :cond_e

    check-cast p3, Lcom/idm/core/syncml/Alert;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAlert(Lcom/idm/core/syncml/Alert;II)V

    goto :goto_4

    :cond_e
    instance-of v0, p3, Lcom/idm/core/syncml/Atomic;

    if-eqz v0, :cond_f

    check-cast p3, Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessAtomic(Lcom/idm/core/syncml/Atomic;II)V

    goto :goto_4

    :cond_f
    instance-of v0, p3, Lcom/idm/core/syncml/Sequence;

    if-eqz v0, :cond_7

    check-cast p3, Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p0, p3, p2, v2}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmProcessSequence(Lcom/idm/core/syncml/Sequence;II)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0, v4}, Lcom/idm/agent/dm/IDMDmCommandHandler;->idmUicAlertResultClear(Ljava/lang/String;)V

    return-void
.end method

.method public idmSetRecvMaxObjSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->recvMaxObjSize:Ljava/lang/String;

    return-void
.end method

.method public idmSetRecvMsgID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->recvMsgID:Ljava/lang/String;

    return-void
.end method

.method public idmUicAlertResultClear(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Atomic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    invoke-virtual {p0, v0}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "Sequence"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    invoke-virtual {p0, v0}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "SyncBody"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmCommandHandler;->uicResultStatus:Lo/b;

    invoke-virtual {p0, v0}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
