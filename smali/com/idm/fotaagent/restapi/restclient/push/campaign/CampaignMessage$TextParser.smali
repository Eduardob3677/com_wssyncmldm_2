.class Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextParser"
.end annotation


# instance fields
.field private final xpath:Lcom/samsung/android/fotaagent/common/util/Xpath;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/fotaagent/common/util/Xpath;

    invoke-direct {v0, p1}, Lcom/samsung/android/fotaagent/common/util/Xpath;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->xpath:Lcom/samsung/android/fotaagent/common/util/Xpath;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getExpression(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "noti/msg[@lang=\'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\']/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->xpath:Lcom/samsung/android/fotaagent/common/util/Xpath;

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->getExpression(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/fotaagent/common/util/Xpath;->getResultOfString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
