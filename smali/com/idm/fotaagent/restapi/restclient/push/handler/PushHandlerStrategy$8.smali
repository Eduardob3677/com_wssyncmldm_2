.class final enum Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$8;
.super Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# static fields
.field private static final EXPRESSION_URL:Ljava/lang/String; = "/msg_extension/url"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy$1;)V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/msg_extension/url"

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/masscampaign/MassCampaignRestClient;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$300()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/idm/fotaagent/restapi/restclient/masscampaign/MassCampaignRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/response/Response$WithBody;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/response/Response$WithBody;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$300()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->add(Ljava/lang/String;)V

    new-instance p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/handler/PushHandlerStrategy;->access$300()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/CampaignNotificationHelper;->notifyNotification()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "empty body retrieved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to retrieve campaign message"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
