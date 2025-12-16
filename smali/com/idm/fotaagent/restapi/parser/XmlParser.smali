.class public Lcom/idm/fotaagent/restapi/parser/XmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/parser/XmlParser$Time;,
        Lcom/idm/fotaagent/restapi/parser/XmlParser$Heartbeat;,
        Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;,
        Lcom/idm/fotaagent/restapi/parser/XmlParser$Device;
    }
.end annotation


# static fields
.field public static final ERROR_CHALLENGE:Ljava/lang/String; = "error/challenge"

.field public static final ERROR_CODE:Ljava/lang/String; = "error/code"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "error/message"

.field private static final ERROR_PARSING_EXPRESSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "error/message"

    const-string v1, "error/challenge"

    const-string v2, "error/code"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser;->ERROR_PARSING_EXPRESSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private printAttributes(Ljava/util/Map;LI/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "LI/a;",
            ")V"
        }
    .end annotation

    const-string p0, "Attributes:"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, LI/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doParseForSuccess(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
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

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public parse(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lcom/samsung/android/fotaagent/common/util/Xpath;->getResultOfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LC2/b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LC2/b;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public parseForError(Ljava/lang/String;)Ljava/util/Map;
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

    sget-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser;->ERROR_PARSING_EXPRESSIONS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->parse(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, LC2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LC2/a;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->printAttributes(Ljava/util/Map;LI/a;)V

    return-object p1
.end method

.method public parseForSuccess(Ljava/lang/String;)Ljava/util/Map;
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

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->doParseForSuccess(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, LC2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC2/a;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->printAttributes(Ljava/util/Map;LI/a;)V

    return-object p1
.end method
