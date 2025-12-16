.class final enum Lcom/idm/adapter/common/IDMDeviceLockControl$3;
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
    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$200()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    const-string p1, "WifiManager is null!!"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p2, "com.idm:wifiLock"

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$202(Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$200()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcom/idm/adapter/common/IDMDeviceLockControl;->access$200()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const-string p1, "m_WifiLock is acquire!!"

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method
