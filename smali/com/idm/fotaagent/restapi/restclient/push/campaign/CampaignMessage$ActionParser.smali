.class Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionParser"
.end annotation


# instance fields
.field private final xpath:Lcom/samsung/android/fotaagent/common/util/Xpath;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/fotaagent/common/util/Xpath;

    invoke-direct {v0, p1}, Lcom/samsung/android/fotaagent/common/util/Xpath;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->xpath:Lcom/samsung/android/fotaagent/common/util/Xpath;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Lorg/w3c/dom/NamedNodeMap;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->getAction(Lorg/w3c/dom/NamedNodeMap;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->getActionExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAction(Lorg/w3c/dom/NamedNodeMap;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NamedNodeMap;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nodeName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nodeValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->of(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;)V

    const-string v0, "intent"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->actionForIntent(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->data(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;

    move-result-object p1

    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->packageName(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->build()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getActionExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "noti/action[@id=\'"

    const-string v0, "\']"

    invoke-static {p0, p1, v0}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIdExpression(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "noti/msg[@lang=\'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\']/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/@id"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->xpath:Lcom/samsung/android/fotaagent/common/util/Xpath;

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->getIdExpression(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/fotaagent/common/util/Xpath;->getResultOfString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->xpath:Lcom/samsung/android/fotaagent/common/util/Xpath;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/b;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
