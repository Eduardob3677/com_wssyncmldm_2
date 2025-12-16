.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-nez p0, :cond_0

    const-string p0, "NotificationManager is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_CAMPAIGN:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const-string p0, "Cancel campaign notification"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public getStrategy(Ljava/util/List;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;",
            ">;)",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$BigTextStyle;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$BigTextStyle;-><init>(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$InboxStyle;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$InboxStyle;-><init>(Landroid/content/Context;Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public notifyNotification()V
    .locals 7

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->getAllMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "there are no campaign messages"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    const-string p0, "NotificationManager is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    const-class v4, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0xc000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    sget-object v5, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;->IDM_NOTIFICATION_CHANNEL_NO_SOUND_NO_VIBRATION:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationChannelType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "sys"

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v4, 0x7f080206

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06004d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->getStrategy(Ljava/util/List;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->NOTIFICATION_ID_CAMPAIGN:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationId;->getId()I

    move-result p0

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string p0, "Add Campaign Notification"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
