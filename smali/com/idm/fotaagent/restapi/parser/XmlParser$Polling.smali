.class public Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;
.super Lcom/idm/fotaagent/restapi/parser/XmlParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/parser/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Polling"
.end annotation


# static fields
.field public static final POLLING_HEARTBEAT_PERIOD:Ljava/lang/String; = "versioninfo/ActiveDeviceInfo/CycleOfDeviceHeartbeat"

.field public static final POLLING_HEARTBEAT_URL:Ljava/lang/String; = "versioninfo/ActiveDeviceInfo/ServiceURL"

.field private static final POLLING_PARSING_EXPRESSIONS:[Ljava/lang/String;

.field public static final POLLING_PERIOD:Ljava/lang/String; = "versioninfo/polling/period"

.field public static final POLLING_RANGE:Ljava/lang/String; = "versioninfo/polling/range"

.field public static final POLLING_TIME:Ljava/lang/String; = "versioninfo/polling/time"

.field public static final POLLING_UNIT:Ljava/lang/String; = "versioninfo/polling/periodUnit"

.field public static final POLLING_URL:Ljava/lang/String; = "versioninfo/url"

.field public static final POLLING_VERSION:Ljava/lang/String; = "versioninfo/firmware/version/upgrade/value"

.field public static final POLLING_VERSION_SEPARATOR:Ljava/lang/String; = ";"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "versioninfo/ActiveDeviceInfo/CycleOfDeviceHeartbeat"

    const-string v6, "versioninfo/ActiveDeviceInfo/ServiceURL"

    const-string v0, "versioninfo/url"

    const-string v1, "versioninfo/polling/periodUnit"

    const-string v2, "versioninfo/polling/period"

    const-string v3, "versioninfo/polling/time"

    const-string v4, "versioninfo/polling/range"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;->POLLING_PARSING_EXPRESSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;->lambda$doParseForSuccess$0(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$doParseForSuccess$0(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    const-string v0, "versioninfo/firmware/version/upgrade/value"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public doParseForSuccess(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;->POLLING_PARSING_EXPRESSIONS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->parse(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;->getPollingVersion(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC2/c;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, LC2/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getPollingVersion(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/fotaagent/common/util/Xpath;

    invoke-direct {p0, p1}, Lcom/samsung/android/fotaagent/common/util/Xpath;-><init>(Ljava/lang/String;)V

    const-string p1, "versioninfo/firmware/version/upgrade/value"

    invoke-virtual {p0, p1}, Lcom/samsung/android/fotaagent/common/util/Xpath;->getNodeList(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "nodeList is null. Failed to parse polling version"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
