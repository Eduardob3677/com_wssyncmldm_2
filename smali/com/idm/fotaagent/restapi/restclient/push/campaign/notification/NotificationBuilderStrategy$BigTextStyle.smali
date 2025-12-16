.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$BigTextStyle;
.super Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
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
    .locals 2

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
