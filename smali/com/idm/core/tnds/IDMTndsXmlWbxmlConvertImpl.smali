.class public Lcom/idm/core/tnds/IDMTndsXmlWbxmlConvertImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmTndsWbxmlDecoder(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/core/tnds/IDMTndsMgmtTree;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsWbxmlParse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    new-instance p2, Lcom/idm/core/tnds/IDMTndsXmlDecoder;

    invoke-direct {p2}, Lcom/idm/core/tnds/IDMTndsXmlDecoder;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, p1, v0}, Lcom/idm/core/tnds/IDMTndsXmlDecoder;->idmTndsXmlDataDecode(Ljava/lang/String;Ljava/io/InputStream;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object p0

    return-object p0
.end method

.method public idmTndsWbxmlEncoder(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/tnds/IDMTndsNodeInfo;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlDataEncode(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsXml2WbxmlConvert(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public idmTndsXmlDecoder(Ljava/lang/String;Ljava/io/InputStream;)Lcom/idm/core/tnds/IDMTndsMgmtTree;
    .locals 0

    new-instance p0, Lcom/idm/core/tnds/IDMTndsXmlDecoder;

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmlDecoder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/idm/core/tnds/IDMTndsXmlDecoder;->idmTndsXmlDataDecode(Ljava/lang/String;Ljava/io/InputStream;)Lcom/idm/core/tnds/IDMTndsMgmtTree;

    move-result-object p0

    return-object p0
.end method

.method public idmTndsXmlEncoder(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/tnds/IDMTndsNodeInfo;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlDataEncode(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
