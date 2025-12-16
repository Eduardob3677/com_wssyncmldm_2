.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/notification/manager/ABNotificationBuilderVariant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$BuilderVariant;


# static fields
.field private static final MAX_PROGRESS:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyVariantTo(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/ui/notification/manager/ABNotificationBuilderVariant;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getUpdateInfo()Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->installationStep()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->of(I)Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/context/UpdateStateFactory;->createOf(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getNotificationTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateInfo;->percent()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->convertPercent(I)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p1, v1, p0, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    return-object p2

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PAUSE:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    if-ne p1, p0, :cond_1

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->getNotificationTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    return-object p2
.end method
