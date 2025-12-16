.class public Lcom/idm/agent/dm/IDMDmCommonHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static commonHandlerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized idmAddCommonHandler(Landroid/os/Handler;)I
    .locals 4

    const-string v0, "handler size="

    const-class v1, Lcom/idm/agent/dm/IDMDmCommonHandler;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v2

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized idmDeleteCommonHandler(I)V
    .locals 2

    const-class v0, Lcom/idm/agent/dm/IDMDmCommonHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized idmGetCommonHandler(I)Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/idm/agent/dm/IDMDmCommonHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/idm/agent/dm/IDMDmCommonHandler;->commonHandlerArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method
