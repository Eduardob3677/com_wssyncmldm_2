.class public Lcom/idm/fotaagent/restapi/parser/XmlParser$Time;
.super Lcom/idm/fotaagent/restapi/parser/XmlParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/parser/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Time"
.end annotation


# static fields
.field private static final TIME_PARSING_EXPRESSIONS:[Ljava/lang/String;

.field public static final TIME_SERVER_TIME:Ljava/lang/String; = "initializeResult/currentServerTime"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "initializeResult/currentServerTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Time;->TIME_PARSING_EXPRESSIONS:[Ljava/lang/String;

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

    sget-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Time;->TIME_PARSING_EXPRESSIONS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->parse(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
