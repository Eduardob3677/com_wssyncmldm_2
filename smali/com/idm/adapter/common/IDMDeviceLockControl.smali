.class public abstract enum Lcom/idm/adapter/common/IDMDeviceLockControl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/adapter/common/IDMDeviceLockControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/adapter/common/IDMDeviceLockControl;

.field public static final enum INSTANCE:Lcom/idm/adapter/common/IDMDeviceLockControl;

.field public static final enum WAKELOCK:Lcom/idm/adapter/common/IDMDeviceLockControl;

.field public static final enum WIFILOCK:Lcom/idm/adapter/common/IDMDeviceLockControl;

.field private static volatile m_WakeLock:Landroid/os/PowerManager$WakeLock;

.field private static volatile m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/idm/adapter/common/IDMDeviceLockControl$1;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/adapter/common/IDMDeviceLockControl$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->INSTANCE:Lcom/idm/adapter/common/IDMDeviceLockControl;

    new-instance v1, Lcom/idm/adapter/common/IDMDeviceLockControl$2;

    const-string v3, "WAKELOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/idm/adapter/common/IDMDeviceLockControl$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/idm/adapter/common/IDMDeviceLockControl;->WAKELOCK:Lcom/idm/adapter/common/IDMDeviceLockControl;

    new-instance v3, Lcom/idm/adapter/common/IDMDeviceLockControl$3;

    const-string v5, "WIFILOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/idm/adapter/common/IDMDeviceLockControl$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/idm/adapter/common/IDMDeviceLockControl;->WIFILOCK:Lcom/idm/adapter/common/IDMDeviceLockControl;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/idm/adapter/common/IDMDeviceLockControl;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/idm/adapter/common/IDMDeviceLockControl;->$VALUES:[Lcom/idm/adapter/common/IDMDeviceLockControl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/adapter/common/IDMDeviceLockControl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/adapter/common/IDMDeviceLockControl;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$100()Landroid/os/PowerManager$WakeLock;
    .locals 1

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public static synthetic access$102(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    sput-object p0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static synthetic access$200()Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method public static synthetic access$202(Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 0

    sput-object p0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p0
.end method

.method public static getInstance()Lcom/idm/adapter/common/IDMDeviceLockControl;
    .locals 1

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->INSTANCE:Lcom/idm/adapter/common/IDMDeviceLockControl;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/adapter/common/IDMDeviceLockControl;
    .locals 1

    const-class v0, Lcom/idm/adapter/common/IDMDeviceLockControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/adapter/common/IDMDeviceLockControl;

    return-object p0
.end method

.method public static values()[Lcom/idm/adapter/common/IDMDeviceLockControl;
    .locals 1

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->$VALUES:[Lcom/idm/adapter/common/IDMDeviceLockControl;

    invoke-virtual {v0}, [Lcom/idm/adapter/common/IDMDeviceLockControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/adapter/common/IDMDeviceLockControl;

    return-object v0
.end method


# virtual methods
.method public abstract idmLockAcquire(Landroid/content/Context;I)V
.end method

.method public declared-synchronized idmLockRelease()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "idmLockRelease"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sput-object v1, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_2
    sput-object v1, Lcom/idm/adapter/common/IDMDeviceLockControl;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
