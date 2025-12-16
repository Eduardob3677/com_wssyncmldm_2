.class public interface abstract Lcom/idm/core/ddf/DDFParsingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BETWEEN_TAG:Lcom/idm/core/ddf/DDFParsingStrategy;

.field public static final CHILD_TAG_NAME:Lcom/idm/core/ddf/DDFParsingStrategy;

.field public static final CHILD_TAG_VALUE:Lcom/idm/core/ddf/DDFParsingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE2/a;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/core/ddf/DDFParsingStrategy;->BETWEEN_TAG:Lcom/idm/core/ddf/DDFParsingStrategy;

    new-instance v0, LE2/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/core/ddf/DDFParsingStrategy;->CHILD_TAG_NAME:Lcom/idm/core/ddf/DDFParsingStrategy;

    new-instance v0, LE2/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/core/ddf/DDFParsingStrategy;->CHILD_TAG_VALUE:Lcom/idm/core/ddf/DDFParsingStrategy;

    return-void
.end method

.method public static synthetic g(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->lambda$static$0(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->lambda$static$1(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToBody(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method private static synthetic lambda$static$1(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToBody(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToChildStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0
.end method

.method private static synthetic lambda$static$2(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToBody(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToChildStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToChildBody(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToChildEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->moveToEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method public static moveToBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    return-void
.end method

.method public static moveToChildBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    return-void
.end method

.method public static moveToChildEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    return-void
.end method

.method public static moveToChildStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    return-void
.end method

.method public static moveToEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    return-void
.end method

.method public static synthetic o(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/core/ddf/DDFParsingStrategy;->lambda$static$2(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract parseValue(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
.end method
