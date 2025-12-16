.class public Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COUNT_DOWN_START:I = 0x1e

.field private static final COUNT_DOWN_STEP:I = 0x1

.field private static final INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "com.wssyncmldm:countdown_wakelock"


# instance fields
.field private countDownTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

.field private remainingTime:I

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;",
            ">;"
        }
    .end annotation
.end field

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    return-void
.end method

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

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "com.wssyncmldm:countdown_wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->lambda$setMainDescriptionBodyWithCountDown$0(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Ljava/lang/String;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    const-string p0, "wakeLock should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->SECOND_IN_MILLIS:I

    mul-int/lit8 v0, v0, 0x1e

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string p0, "com.wssyncmldm:countdown_wakelock is acquired!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->onCountDown()V

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->INSTANCE:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;

    return-object v0
.end method

.method private isEmergencyCallContacted(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "get_block_suppression_status"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "blocking_suppressed"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ret : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return p0
.end method

.method private static synthetic lambda$setMainDescriptionBodyWithCountDown$0(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->setMainBody(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized onCountDown()V
    .locals 3

    const-string v0, "Neither viewReference("

    const-string v1, "remainingTime: "

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->remainingTime:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "not running; do nothing"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->viewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->remainingTime:I

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->setMainDescriptionBodyWithCountDown(I)V

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->remainingTime:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->tryInstall()V

    :cond_2
    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->remainingTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->remainingTime:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") nor model("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") should be null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->stopIfRunning()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private releaseWakeLock()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    const-string p0, "wakeLock should not be null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string p0, "com.wssyncmldm:countdown_wakelock is released!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method private setMainDescriptionBodyWithCountDown(I)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getMainBody(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, LA/o;

    const/16 v1, 0xc

    invoke-direct {p1, v0, v1, p0}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private tryInstall()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->isCallIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->isEmergencyCallContacted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->scheduleInstallOneDayLater()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_SCHEDULE_CONFIRM:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v2}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v3}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/SilentReboot;->enable()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->tryInstall()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object v0

    const-class v1, Lcom/idm/fotaagent/receiver/dynamic/CallStateChangeReceiver;

    sget-object v2, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z

    const-string v0, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;->finish()V

    :cond_2
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->stopIfRunning()V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->countDownTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized startUnlessRunning(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->viewReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "already running; just update UI"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->remainingTime:I

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->setMainDescriptionBodyWithCountDown(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 p1, 0x1e

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->remainingTime:I

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->acquireWakeLock()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;

    const/4 p1, 0x1

    invoke-direct {v1, p1, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/c;-><init>(ILjava/lang/Object;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->countDownTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopIfRunning()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "not running; do nothing"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->countDownTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->viewReference:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->model:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->countDownTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->releaseWakeLock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
