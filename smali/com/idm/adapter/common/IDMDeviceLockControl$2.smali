.class final enum Lcom/idm/adapter/common/IDMDeviceLockControl$2;
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


# instance fields
.field private final WAKE_LOCK_TIME_OUT:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/adapter/common/IDMDeviceLockControl;-><init>(Ljava/lang/String;ILcom/idm/adapter/common/IDMDeviceLockControl$1;)V

    const-wide/32 p1, 0xdbba0

    iput-wide p1, p0, Lcom/idm/adapter/common/IDMDeviceLockControl$2;->WAKE_LOCK_TIME_OUT:J

    return-void
.end method


# virtual methods
.method public declared-synchronized idmLockAcquire(Landroid/content/Context;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-nez p1, :cond_0

    const-string p1, "PowerManager is null!!"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v0, "com.idm:sdk_wakeLock"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$102(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-nez p2, :cond_1

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/32 v0, 0xdbba0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :goto_0
    const-string p1, "sdk_wakeLock is acquire!!"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
