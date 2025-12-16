.class public final synthetic Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;->a:I

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;->b:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;->a:I

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;->b:Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lorg/w3c/dom/NamedNodeMap;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->a(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Lorg/w3c/dom/NamedNodeMap;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->b(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
