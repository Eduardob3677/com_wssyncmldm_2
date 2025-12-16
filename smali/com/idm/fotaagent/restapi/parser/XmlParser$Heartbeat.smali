.class public Lcom/idm/fotaagent/restapi/parser/XmlParser$Heartbeat;
.super Lcom/idm/fotaagent/restapi/parser/XmlParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/parser/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Heartbeat"
.end annotation


# static fields
.field private static final HEARTBEAT_PARSING_EXPRESSIONS:[Ljava/lang/String;

.field public static final HEARTBEAT_PERIOD:Ljava/lang/String; = "ActiveDeviceInfo/CycleOfDeviceHeartbeat"

.field public static final HEARTBEAT_URL:Ljava/lang/String; = "ActiveDeviceInfo/ServiceURL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ActiveDeviceInfo/CycleOfDeviceHeartbeat"

    const-string v1, "ActiveDeviceInfo/ServiceURL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Heartbeat;->HEARTBEAT_PARSING_EXPRESSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;-><init>()V

    return-void
.end method


# virtual methods
.method public doParseForSuccess(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
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

    sget-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Heartbeat;->HEARTBEAT_PARSING_EXPRESSIONS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->parse(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
