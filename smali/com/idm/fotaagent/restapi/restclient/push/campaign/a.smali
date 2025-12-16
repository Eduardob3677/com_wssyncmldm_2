.class public final synthetic Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

.field public final synthetic e:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->e:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;

    iput-object p3, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->f:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->e:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;

    invoke-static {v1, p0, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->a(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->f:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;->e:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;

    invoke-static {v1, p0, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->d(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
