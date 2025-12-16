.class public Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager$InstanceLazyHolder;
    }
.end annotation


# static fields
.field private static final WAKELOCK_TAG:Ljava/lang/String; = "com.wssyncmldm:update_engine_wakelock"


# instance fields
.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const-string v0, "PowerManager should not be null!!"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "com.wssyncmldm:update_engine_wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;-><init>()V

    return-void
.end method

.method private checkConditions()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getInitType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const-string p0, "ro.product.vendor.device"

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "a55x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ignore except of user init"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p0, "wakeLock should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static get()Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager$InstanceLazyHolder;->access$100()Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquireWakeLockIfNeeded()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->checkConditions()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MILLIS:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string p0, "com.wssyncmldm:update_engine_wakelock is acquired!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :catch_0
    return-void
.end method

.method public releaseWakeLock()V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->checkConditions()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, "com.wssyncmldm:update_engine_wakelock is released!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :catch_1
    return-void
.end method
