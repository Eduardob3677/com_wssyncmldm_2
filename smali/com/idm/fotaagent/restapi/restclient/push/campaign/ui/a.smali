.class public final synthetic Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

.field public final synthetic e:Le/j;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;Le/j;I)V
    .locals 0

    iput p3, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->e:Le/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->e:Le/j;

    check-cast p1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->h(Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->e:Le/j;

    check-cast p1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/a;->d:Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;->g(Lcom/idm/fotaagent/restapi/restclient/push/campaign/ui/CampaignMessageActivity$CampaignDialogFragment;Le/j;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
