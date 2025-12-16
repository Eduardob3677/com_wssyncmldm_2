.class public Lcom/idm/fotaagent/abupdate/abenabler/Executor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;,
        Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB;
    }
.end annotation


# static fields
.field private static prevNetworkType:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->WIFI:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->prevNetworkType:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->isMetadataDownloadPossible(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->isUpdateEngineDownloadPossible(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->needsNetwork()Z

    move-result v0

    return v0
.end method

.method private static isBatteryPossible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->get(Landroid/content/Context;)Lcom/idm/fotaagent/utils/battery/BatteryChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->isEnoughBatteryToUpdate()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Low Battery"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/receiver/dynamic/BatteryChangeReceiver;

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->register(Ljava/lang/Class;Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;)Z

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_LOW_BATTERY_TO_UPDATE:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDelayedDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_AB_UPDATE_FAIL_INSUFFICIENT_BATTERY:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isMetadataDownloadPossible(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->isMetadataNetworkPossible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->isBatteryPossible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMetadataNetworkPossible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->needsNetwork()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Network is not available"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->getFumoTaskEvent(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    invoke-static {p0}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->schedule(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->WIFI:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->MOBILE:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    :goto_0
    sput-object p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->prevNetworkType:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    return v1
.end method

.method private static isUpdateEngineDownloadPossible(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->isUpdateEngineNetworkPossible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->isBatteryPossible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUpdateEngineNetworkPossible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->needsNetwork()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->WIFI:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->MOBILE:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    :goto_0
    sget-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor;->prevNetworkType:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    if-ne v0, p0, :cond_2

    return v1

    :cond_2
    const-string p0, "Network has been changed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->getInstance()Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;->isDLRetriable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static needsNetwork()Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->needsNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "It doesn\'t require network. installationStep : "

    invoke-static {v1, v0}, LB/f;->D(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
