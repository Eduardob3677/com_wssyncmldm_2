.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receive broadcast message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessageHelper;->showCampaignDialog()V

    return-void
.end method
