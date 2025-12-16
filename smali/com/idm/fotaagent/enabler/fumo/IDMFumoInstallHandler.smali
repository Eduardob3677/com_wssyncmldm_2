.class public Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTALL_TYPE_REPORT_TIMEOUT_IN_SEC:J = 0xaL

.field private static final installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field protected final actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

.field protected final context:Landroid/content/Context;

.field private final deltaPath:Ljava/lang/String;

.field private final fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

.field protected final taskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    new-instance p2, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {p2}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getDeltaIndex()I

    move-result p1

    invoke-static {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->get(I)Lcom/idm/fotaagent/utils/storage/StorageType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->pathForDeltaFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->deltaPath:Ljava/lang/String;

    return-void
.end method

.method private checkBatteryInsufficient()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->get(Landroid/content/Context;)Lcom/idm/fotaagent/utils/battery/BatteryChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->isEnoughBatteryToUpdate()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInsufficientBatteryToInstall;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInsufficientBatteryToInstall;-><init>()V

    throw p0
.end method

.method private checkFumoStatus()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionImproperFumostatus;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionImproperFumostatus;-><init>()V

    throw p0
.end method

.method private checkMemoryInsufficient()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->INSTALLABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->createInstance(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->check()V

    return-void
.end method

.method private checkRootingDevice()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getServerId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->isBinaryCheckEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatus;->isOfficial()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "PrintUpdateAbortReason : Rooting DEVICE"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;

    const-string v0, "450"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setNeedToReboot(Z)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public changeFumoStatusAndInstallPackage()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/utils/RebootChecker;->saveBootIdAndStartTimer(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->deltaPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public checkPolicyAndInstall()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForInstall;->getExceptional()Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v3

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;->act()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallSuspended;->getExceptionClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->ifThrown(Ljava/util/function/Consumer;Ljava/lang/Class;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v1

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;->act()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Action$InstallFailed;->getExceptionClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->ifThrown(Ljava/util/function/Consumer;Ljava/lang/Class;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/enabler/fumo/e;

    invoke-direct {v2, p0}, Lcom/idm/fotaagent/enabler/fumo/e;-><init>(Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;)V

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->orElse(Ljava/util/concurrent/Callable;)Ljava/util/Optional;
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionImproperFumostatus; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInsufficientBatteryToInstall; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v1, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->reboot()V

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->setNeedToReboot(Z)V

    goto/16 :goto_7

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_4

    :catch_3
    move-exception v1

    goto/16 :goto_5

    :goto_1
    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->clearCommandAndUncryptFile()V

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "400"

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->reportUpdateFailAndShowDialog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v1, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :goto_3
    :try_start_2
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v3, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v3}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v1, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    :goto_4
    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No space left on device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSUFFICIENT_MEMORY:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v3, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v3}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v1, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->reboot()V

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->setNeedToReboot(Z)V

    :cond_1
    return-void

    :cond_2
    :try_start_4
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_CONNECT_FAIL:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v1, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    :catch_4
    :try_start_5
    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_LOW_BATTERY_TO_UPDATE:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    new-instance v3, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v3}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;)V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object v1

    const-class v2, Lcom/idm/fotaagent/receiver/dynamic/BatteryChangeReceiver;

    sget-object v3, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {v1, v2, v3}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v1, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    :goto_5
    :try_start_6
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_PRIMARY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-static {v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->cancel(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v1, "410"

    goto :goto_6

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->reportUpdateFailAndShowDialog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v1

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v1, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v1}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    :cond_4
    :goto_7
    return-void

    :goto_8
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finish(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Z

    new-instance v2, Lcom/idm/fotaagent/utils/SilentReboot;

    invoke-direct {v2}, Lcom/idm/fotaagent/utils/SilentReboot;-><init>()V

    invoke-virtual {v2}, Lcom/idm/fotaagent/utils/SilentReboot;->disable()V

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->needToReboot:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->reboot()V

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->setNeedToReboot(Z)V

    :cond_5
    throw v1
.end method

.method public clearCommandAndUncryptFile()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/storage/FileManager;->clearCommandAndUncryptFile()V

    return-void
.end method

.method public execute()V
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->installRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/utils/RebootChecker;->waitsReboot()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Since this application waits for reboot in order to complete installation, it should not perform anything"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/d;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/fumo/d;-><init>(Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const-string p0, "parallel install requests are silently ignored"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getErrorCodeForRebootFailed()Ljava/lang/String;
    .locals 0

    const-string p0, "451"

    return-object p0
.end method

.method public install()Z
    .locals 5

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->checkFumoStatus()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->cancel()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->checkBatteryInsufficient()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->checkMemoryInsufficient()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->checkRootingDevice()V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_INSTALL_CONFIRM_FOREGROUND:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->showPleaseWaitDialog()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fumo status ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    const-string v1, "Initiation of software update"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/utils/GeneralUtils;->printAuditLog(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->verifyUpdatableDelta()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->verifyPackage()V

    new-instance v0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->initializeUpdateResult()V

    invoke-static {}, Lcom/idm/fotaagent/utils/GeneralUtils;->resetBadgeAndPendingAfWSystemUpdate()V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    const-string v1, "Software update started"

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/utils/GeneralUtils;->printAuditLog(Landroid/content/Context;Ljava/lang/String;Z)V

    :try_start_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/enabler/fumo/InstallReporter;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->report(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const-string v0, "Device is about to be rebooted"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->changeFumoStatusAndInstallPackage()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v0, "should not reach here"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->getErrorCodeForRebootFailed()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/idm/fotaagent/utils/RebootChecker;->stopTimerIfRunning()V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->getErrorCodeForRebootFailed()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reboot()V
    .locals 1

    :try_start_0
    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public reportUpdateFailAndShowDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->setUpdateResultCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "404"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x50

    if-nez v0, :cond_1

    const-string v0, "450"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_BLOCKED_DEVICE_BY_ROOTING:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    const/16 v1, 0xf0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_DOWNLOADED_DELTA_INVALID:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    :goto_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->taskId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method public showPleaseWaitDialog()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    return-void
.end method

.method public verifyPackage()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deltaFileName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->deltaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->isPackageVerificationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Skip Validation check"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->deltaPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V

    const-string v0, "verifyPackage: Verify Success"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    const-string v1, "Software update Package verification succeeded"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/utils/GeneralUtils;->printAuditLog(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->clearCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "verifyPackage: Verify Fail"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const-string v1, "PrintUpdateAbortReason : FAILED_FW_UP_VALIDATION"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->context:Landroid/content/Context;

    const-string v1, "Software update Package verification failed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/idm/fotaagent/utils/GeneralUtils;->printAuditLog(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;

    const-string v1, "404"

    invoke-direct {p0, v1, v0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public verifyUpdatableDelta()V
    .locals 6

    const-string v0, "410"

    const-string v1, "PrintUpdateAbortReason : FileSize is wrong (actual: "

    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->fileManager:Lcom/idm/fotaagent/utils/storage/FileManager;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->deltaPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/idm/fotaagent/utils/storage/FileManager;->getDeltaFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->actionInfoDao:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expected: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/idm/exception/file/IDMExceptionFileNotFound; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "IDMExceptionFileNotFound fail"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const-string v1, "PrintUpdateAbortReason : There is no dir/file"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;

    invoke-direct {v1, v0, p0}, Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
