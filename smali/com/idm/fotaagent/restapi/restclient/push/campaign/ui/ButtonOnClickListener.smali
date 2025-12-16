.class Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final action:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;->action:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    return-void
.end method

.method private deleteAndShowNextCampaign()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->deleteCurrentMessage()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->getAllMessages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "No more messages"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->cancel()V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->notifyNotification()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->showCampaignDialog()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;->action:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    iget-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->act(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/ButtonOnClickListener;->deleteAndShowNextCampaign()V

    return-void
.end method
