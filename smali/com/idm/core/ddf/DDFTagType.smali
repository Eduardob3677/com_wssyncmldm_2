.class public enum Lcom/idm/core/ddf/DDFTagType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/core/ddf/DDFTagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/core/ddf/DDFTagType;

.field public static final enum ACCESS_TYPE:Lcom/idm/core/ddf/DDFTagType;

.field public static final enum DF_FORMAT:Lcom/idm/core/ddf/DDFTagType;

.field public static final enum DF_TYPE:Lcom/idm/core/ddf/DDFTagType;

.field public static final enum NODE_NAME:Lcom/idm/core/ddf/DDFTagType;

.field public static final enum NONE:Lcom/idm/core/ddf/DDFTagType;

.field public static final enum SCOPE:Lcom/idm/core/ddf/DDFTagType;

.field public static final enum VALUE:Lcom/idm/core/ddf/DDFTagType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parsingStrategy:Lcom/idm/core/ddf/DDFParsingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/idm/core/ddf/DDFTagType$1;

    sget-object v1, Lcom/idm/core/ddf/DDFParsingStrategy;->BETWEEN_TAG:Lcom/idm/core/ddf/DDFParsingStrategy;

    const-string v2, "NONE"

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/idm/core/ddf/DDFTagType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    sput-object v0, Lcom/idm/core/ddf/DDFTagType;->NONE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v2, Lcom/idm/core/ddf/DDFTagType;

    const/4 v4, 0x1

    const-string v5, "NodeName"

    const-string v6, "NODE_NAME"

    invoke-direct {v2, v6, v4, v5, v1}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    sput-object v2, Lcom/idm/core/ddf/DDFTagType;->NODE_NAME:Lcom/idm/core/ddf/DDFTagType;

    new-instance v5, Lcom/idm/core/ddf/DDFTagType;

    sget-object v6, Lcom/idm/core/ddf/DDFParsingStrategy;->CHILD_TAG_NAME:Lcom/idm/core/ddf/DDFParsingStrategy;

    const-string v7, "ACCESS_TYPE"

    const/4 v8, 0x2

    const-string v9, "AccessType"

    invoke-direct {v5, v7, v8, v9, v6}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    sput-object v5, Lcom/idm/core/ddf/DDFTagType;->ACCESS_TYPE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v7, Lcom/idm/core/ddf/DDFTagType;

    const/4 v9, 0x3

    const-string v10, "Scope"

    const-string v11, "SCOPE"

    invoke-direct {v7, v11, v9, v10, v6}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    sput-object v7, Lcom/idm/core/ddf/DDFTagType;->SCOPE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v10, Lcom/idm/core/ddf/DDFTagType;

    const/4 v11, 0x4

    const-string v12, "DFFormat"

    const-string v13, "DF_FORMAT"

    invoke-direct {v10, v13, v11, v12, v6}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    sput-object v10, Lcom/idm/core/ddf/DDFTagType;->DF_FORMAT:Lcom/idm/core/ddf/DDFTagType;

    new-instance v6, Lcom/idm/core/ddf/DDFTagType;

    const-string v12, "DFType"

    sget-object v13, Lcom/idm/core/ddf/DDFParsingStrategy;->CHILD_TAG_VALUE:Lcom/idm/core/ddf/DDFParsingStrategy;

    const-string v14, "DF_TYPE"

    const/4 v15, 0x5

    invoke-direct {v6, v14, v15, v12, v13}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    sput-object v6, Lcom/idm/core/ddf/DDFTagType;->DF_TYPE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v12, Lcom/idm/core/ddf/DDFTagType;

    const/4 v13, 0x6

    const-string v14, "Value"

    const-string v15, "VALUE"

    invoke-direct {v12, v15, v13, v14, v1}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    sput-object v12, Lcom/idm/core/ddf/DDFTagType;->VALUE:Lcom/idm/core/ddf/DDFTagType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/idm/core/ddf/DDFTagType;

    aput-object v0, v1, v3

    aput-object v2, v1, v4

    aput-object v5, v1, v8

    aput-object v7, v1, v9

    aput-object v10, v1, v11

    const/4 v0, 0x5

    aput-object v6, v1, v0

    aput-object v12, v1, v13

    sput-object v1, Lcom/idm/core/ddf/DDFTagType;->$VALUES:[Lcom/idm/core/ddf/DDFTagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/idm/core/ddf/DDFParsingStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/core/ddf/DDFTagType;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/idm/core/ddf/DDFTagType;->parsingStrategy:Lcom/idm/core/ddf/DDFParsingStrategy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;Lcom/idm/core/ddf/DDFTagType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/idm/core/ddf/DDFTagType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/core/ddf/DDFTagType;->lambda$of$0(Ljava/lang/String;Lcom/idm/core/ddf/DDFTagType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$of$0(Ljava/lang/String;Lcom/idm/core/ddf/DDFTagType;)Z
    .locals 0

    iget-object p1, p1, Lcom/idm/core/ddf/DDFTagType;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static of(Ljava/lang/String;)Lcom/idm/core/ddf/DDFTagType;
    .locals 3

    invoke-static {}, Lcom/idm/core/ddf/DDFTagType;->values()[Lcom/idm/core/ddf/DDFTagType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/core/ddf/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/idm/core/ddf/a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/core/ddf/DDFTagType;->NONE:Lcom/idm/core/ddf/DDFTagType;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/core/ddf/DDFTagType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/core/ddf/DDFTagType;
    .locals 1

    const-class v0, Lcom/idm/core/ddf/DDFTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/core/ddf/DDFTagType;

    return-object p0
.end method

.method public static values()[Lcom/idm/core/ddf/DDFTagType;
    .locals 1

    sget-object v0, Lcom/idm/core/ddf/DDFTagType;->$VALUES:[Lcom/idm/core/ddf/DDFTagType;

    invoke-virtual {v0}, [Lcom/idm/core/ddf/DDFTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/core/ddf/DDFTagType;

    return-object v0
.end method


# virtual methods
.method public toTag(Lorg/xmlpull/v1/XmlPullParser;)Lcom/idm/core/ddf/DDFTag;
    .locals 2

    new-instance v0, Lcom/idm/core/ddf/DDFTag;

    iget-object v1, p0, Lcom/idm/core/ddf/DDFTagType;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/idm/core/ddf/DDFTagType;->parsingStrategy:Lcom/idm/core/ddf/DDFParsingStrategy;

    invoke-interface {p0, p1}, Lcom/idm/core/ddf/DDFParsingStrategy;->parseValue(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/idm/core/ddf/DDFTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
