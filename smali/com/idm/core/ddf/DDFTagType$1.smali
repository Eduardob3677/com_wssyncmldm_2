.class final enum Lcom/idm/core/ddf/DDFTagType$1;
.super Lcom/idm/core/ddf/DDFTagType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/core/ddf/DDFTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/idm/core/ddf/DDFTagType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/core/ddf/DDFParsingStrategy;Lcom/idm/core/ddf/DDFTagType$1;)V

    return-void
.end method


# virtual methods
.method public toTag(Lorg/xmlpull/v1/XmlPullParser;)Lcom/idm/core/ddf/DDFTag;
    .locals 0

    new-instance p0, Lcom/idm/core/ddf/DDFTag;

    const-string p1, ""

    invoke-direct {p0, p1, p1}, Lcom/idm/core/ddf/DDFTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
