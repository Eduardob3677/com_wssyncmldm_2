.class final enum Lcom/idm/adapter/common/IDMDeviceLockControl$1;
.super Lcom/idm/adapter/common/IDMDeviceLockControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/adapter/common/IDMDeviceLockControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/adapter/common/IDMDeviceLockControl;-><init>(Ljava/lang/String;ILcom/idm/adapter/common/IDMDeviceLockControl$1;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized idmLockAcquire(Landroid/content/Context;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->WAKELOCK:Lcom/idm/adapter/common/IDMDeviceLockControl;

    invoke-virtual {v0, p1, p2}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockAcquire(Landroid/content/Context;I)V

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->WIFILOCK:Lcom/idm/adapter/common/IDMDeviceLockControl;

    invoke-virtual {v0, p1, p2}, Lcom/idm/adapter/common/IDMDeviceLockControl;->idmLockAcquire(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
