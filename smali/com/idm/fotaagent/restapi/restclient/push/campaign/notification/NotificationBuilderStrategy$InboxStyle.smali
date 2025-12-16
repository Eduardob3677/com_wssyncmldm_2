.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$InboxStyle;
.super Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getStyle()Landroid/app/Notification$Style;
    .locals 5

    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-direct {v0}, Landroid/app/Notification$InboxStyle;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->context:Landroid/content/Context;

    const v2, 0x7f13007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->context:Landroid/content/Context;

    const v1, 0x7f13007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
