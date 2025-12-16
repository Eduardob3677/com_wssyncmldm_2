.class public Lcom/idm/providers/mo/IDMMoDatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/agent/dm/IDMDmInterface;
.implements Lcom/idm/providers/mo/IDMMoInterface;
.implements Lcom/idm/core/syncml/Constants;
.implements Lcom/idm/agent/dl/IDMDlInterface;


# static fields
.field private static instance:Lcom/idm/providers/mo/IDMMoDatabaseManager;


# instance fields
.field private final moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/idm/providers/mo/IDMMoDatabaseImpl;->getInstance(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;
    .locals 0

    invoke-static {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->lambda$getInstance$0(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;
    .locals 4

    const-class v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/providers/mo/IDMMoDatabaseManager;->instance:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LG2/a;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, LG2/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;
    .locals 1

    new-instance v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;

    invoke-direct {v0, p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->instance:Lcom/idm/providers/mo/IDMMoDatabaseManager;

    return-object v0
.end method


# virtual methods
.method public idmMoChangeServerIdProfileTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmChangeServerIdProfileTable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoChangeServerIdProfileTableName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmChangeServerIdProfileTableName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoChangeServerIdXNodeName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmChangeServerIdXNodeName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoChangeServerIdXfumoTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmChangeServerIdXFumoTable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoChangeServerIdXnodeTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmChangeServerIdXnodeTable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoDatabaseBeginTransaction()V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseBeginTransaction()V

    return-void
.end method

.method public idmMoDatabaseClose()V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseClose()V

    return-void
.end method

.method public idmMoDatabaseCreateTable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseCreate(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public idmMoDatabaseCreateTable(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseCreate(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public idmMoDatabaseDeleteTable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseDelete(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public idmMoDatabaseDeleteTable(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseDelete(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public idmMoDatabaseEndTransaction()V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseEndTransaction()V

    return-void
.end method

.method public idmMoDatabaseOpen()V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseOpen()V

    return-void
.end method

.method public idmMoDatabaseReset(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {v0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseDelete(Ljava/util/ArrayList;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {v1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoXnodeDelete(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {v1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoXFumoDelete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public idmMoDatabaseSetTransactionSuccessful()V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoDatabaseSetTransactionSuccessful()V

    return-void
.end method

.method public idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/AppAuth/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxServerAuth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxClientAuth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p3, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LG2/b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LG2/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public idmMoGetAccProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "path "

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, v1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LG2/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LG2/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public idmMoGetAccServerUriInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/AppAddr/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Addr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LG2/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LG2/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public idmMoGetAppAddrPortInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/AppAddr/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/Port/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/PortNbr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LG2/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LG2/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public idmMoGetDBAdapter()Lcom/idm/providers/mo/IDMMoDatabaseAdapter;
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    return-object p0
.end method

.method public idmMoGetFumoNodeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxFumo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {v0, p2, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p2, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LG2/b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LG2/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;

    const-string p2, "Not exist Fumo node:"

    invoke-static {p2, p1}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public idmMoGetNodeInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoNodeInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;

    const-string p1, "NodeInfo is null"

    invoke-direct {p0, p1}, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public idmMoInsertDefaultDMAccNode(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    const-string v3, "./DMAcc/x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "replace from [ ./DMAcc/x ] to [ ./DMAcc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->W(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "./DMAcc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v5, v2

    const-string v2, "/AAuthData"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/idm/providers/mo/IDMMoNodeInfo;

    const-string v10, "text/plain"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "bin"

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/idm/providers/mo/IDMMoNodeInfo;

    const-string v10, "text/plain"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "chr"

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/idm/providers/mo/IDMMoNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoListImplicit(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionWrongValue; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionPermissionDenied; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public idmMoIsExistDbTable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistDbTable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public idmMoIsSameMoDBTable(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmIsSameDBTable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public idmMoResetAuthInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/AppAuth/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxClientAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxServerAuth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const-string v2, "/AAuthName"

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoForceDeleteAuthNodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const-string v14, "/AAuthSecret"

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoForceDeleteAuthNodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const-string v15, "/AAuthData"

    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoForceDeleteAuthNodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoForceDeleteAuthNodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoForceDeleteAuthNodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "text/plain"

    const/4 v9, 0x0

    const-string v4, "Get=*&Replace=*"

    const/4 v5, 0x2

    const-string v6, "chr"

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    invoke-interface/range {v1 .. v9}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v1}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v1, v11, v10}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeATTDevicePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "text/plain"

    const-string v4, "Add=*"

    const-string v6, "chr"

    invoke-interface/range {v1 .. v9}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v1}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v1}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeATTFactoryNonce()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "text/plain"

    const-string v4, "Add=*"

    const-string v6, "chr"

    move-object/from16 v8, v16

    invoke-interface/range {v1 .. v9}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {v1}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    invoke-virtual {v1, v11, v10}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMakeATTServerPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "text/plain"

    const-string v4, "Add=*"

    const-string v6, "chr"

    invoke-interface/range {v1 .. v9}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "text/plain"

    const/4 v8, 0x0

    const-string v3, "Add=*"

    const/4 v4, 0x2

    const-string v5, "chr"

    move-object/from16 v1, p1

    move-object/from16 v7, v16

    invoke-interface/range {v0 .. v8}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoInsertNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/AppAuth/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxServerAuth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxClientAuth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const/4 p2, 0x0

    invoke-interface {p0, p3, p1, p4, p2}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoSetAccProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoSetAccServerUriInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/AppAddr/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Addr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoSetAppAddrPortInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxDMAcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/AppAddr/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/Port/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/PortNbr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmMoSetFumoNodeValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p3}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetXnodeInfo(Ljava/lang/String;)Lcom/idm/providers/mo/IDMMoXnodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoGetxFumo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {v0, p3, p1}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoIsExistNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const/4 v0, 0x0

    invoke-interface {p0, p3, p1, p2, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;

    const-string p2, "Not exist Fumo node:"

    invoke-static {p2, p1}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public idmMoSetFumoXnodeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/idm/providers/mo/IDMMoXnodeInfo;

    invoke-direct {v0}, Lcom/idm/providers/mo/IDMMoXnodeInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoXnodeSetServerID(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/idm/providers/mo/IDMMoXnodeInfo;->idmMoSetxFumo(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0, p1, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateXnodeInfo(Ljava/lang/String;Lcom/idm/providers/mo/IDMMoXnodeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public idmMoSetNodeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmMoUpdateNodeInfoImplicit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public idmXfumoTableDelete()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmXfumoTableDelete()Z
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMExceptionDatabaseNullPointer; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public idmXnodeDatabaseCreate()V
    .locals 0

    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmXnodeDatabaseCreate()V

    return-void
.end method

.method public idmXnodeTableDelete()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/providers/mo/IDMMoDatabaseManager;->moDatabase:Lcom/idm/providers/mo/IDMMoDatabaseAdapter;

    invoke-interface {p0}, Lcom/idm/providers/mo/IDMMoDatabaseAdapter;->idmXnodeTableDelete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
