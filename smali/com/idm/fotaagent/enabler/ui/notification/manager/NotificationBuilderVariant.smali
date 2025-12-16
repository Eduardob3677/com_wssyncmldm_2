.class public Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderVariant;
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

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderVariant;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130031

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->getFormattedRemainingTime()Landroidx/lifecycle/F;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->getPercent()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_0
    return-object p2
.end method
