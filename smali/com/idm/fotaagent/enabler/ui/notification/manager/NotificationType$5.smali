.class final enum Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$5;
.super Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$BigText;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$SmallIcon;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationBuilderStrategy$Action;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public getContentText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getMajorOrMinorContentText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getContentTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f130030

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public needsRemind()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;->DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;

    new-instance v1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-direct {v1}, Lcom/idm/fotaagent/BundleWrapper;-><init>()V

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/BundleWrapper;->setTaskId(Ljava/lang/String;)Lcom/idm/fotaagent/BundleWrapper;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendActivityMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIACTIVITY;Lcom/idm/fotaagent/BundleWrapper;)V

    const-string p0, "0015"

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;)V

    return-void
.end method

.method public timeMillisForRemind()J
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->getNotificationStrategy()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationStrategy;->isForegroundService()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/utils/EpochTime;->HOUR_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    :goto_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/EpochTime;->toMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    goto :goto_0

    :goto_1
    return-wide v0
.end method
