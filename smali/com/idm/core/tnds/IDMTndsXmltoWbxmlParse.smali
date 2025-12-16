.class Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;
.implements Lcom/idm/core/tnds/IDMTndsConstants;


# instance fields
.field private tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private idmTndsAddWbxmlHeader()V
    .locals 4

    const-string v0, "TNDSAddWbxmlHeader"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/16 v0, 0x1f

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;->gTndsWbxmlHeaderInfo:[C

    aget-char v3, v3, v2

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsConvertAddTndsCodePage()V
    .locals 5

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-byte v2, v2, v3

    int-to-char v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsConvertCheckElement(C)V
    .locals 2

    int-to-byte v0, p1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x57

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 p1, 0x71

    if-eq v0, p1, :cond_0

    const/16 p1, 0x73

    if-eq v0, p1, :cond_0

    const/16 p1, 0x74

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertAddTndsCodePage()V

    goto :goto_0

    :cond_0
    :pswitch_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsProcessConvertStringData()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsProcessConvertHexData(C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private idmTndsConvertCheckTag()V
    .locals 2

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertXmlCloseTag()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertXml2Wbxml()V

    :goto_0
    return-void
.end method

.method private idmTndsConvertGetXMLTag(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;->gszTndsTokenStr:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private idmTndsConvertSkip1Byte()V
    .locals 3

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsConvertString2WbxmlHex(Ljava/lang/String;)C
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x38

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertGetXMLTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x45

    int-to-char p0, v2

    return p0

    :cond_0
    const-string v3, "MgmtTree xmlns=\"syncml:dmddf1.2\""

    const/16 v4, 0x20

    invoke-virtual {p1, v1, v3, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 p0, 0x60

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "# ERROR # Not Found String !!! ###"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const p0, 0xffff

    return p0
.end method

.method private idmTndsConvertXml2Wbxml()V
    .locals 10

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result v5

    const/16 v6, 0x3c

    const/16 v7, 0x3e

    const/4 v8, 0x1

    const-string v9, ""

    if-ne v4, v6, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v6, v3

    :goto_0
    if-eq v4, v7, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_0
    add-int/2addr v6, v8

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-ne v4, v7, :cond_2

    add-int/2addr v6, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v9}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v8

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v3}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertCheckElement(C)V

    return-void
.end method

.method private idmTndsConvertXmlCloseTag()V
    .locals 8

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_0
    const/16 v6, 0x3e

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v7

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsGetWbxmlData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmTndsGetWbxmlSize()I
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetWbxmlDataSize()I

    move-result p0

    return p0
.end method

.method private idmTndsGetXMLData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmTndsGetXMLSize()I
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetXMLDataSize()I

    move-result p0

    return p0
.end method

.method private idmTndsInitConvert(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;-><init>()V

    iput-object v0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-direct {p0, p2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsAddWbxmlHeader()V

    return-void
.end method

.method private idmTndsProcessConvertAccessTypeElement()V
    .locals 9

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result v5

    const/16 v6, 0x3c

    const/4 v7, 0x1

    const-string v8, ""

    if-ne v4, v6, :cond_1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_0
    const/16 v6, 0x2f

    if-eq v4, v6, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x2

    :cond_1
    invoke-direct {p0, v8}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v3

    add-int/lit8 v3, v3, -0x40

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v7

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsProcessConvertFormatElement()V
    .locals 10

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, ""

    const/16 v8, 0x3c

    if-ne v4, v8, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_0
    const/16 v8, 0x2f

    if-eq v4, v8, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_0
    move v5, v4

    move v4, v8

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x2

    goto :goto_2

    :cond_2
    :goto_1
    if-eq v4, v8, :cond_3

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_3
    :goto_2
    invoke-direct {p0, v7}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v3

    add-int/lit8 v3, v3, -0x40

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsProcessConvertHexData(C)V
    .locals 1

    const/16 v0, 0x45

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsProcessConvertFormatElement()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsProcessConvertAccessTypeElement()V

    :goto_0
    return-void
.end method

.method private idmTndsProcessConvertStringData()V
    .locals 9

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    add-int/2addr v0, v6

    move v7, v3

    :cond_0
    :goto_0
    const/16 v8, 0x3c

    if-eq v4, v8, :cond_2

    const/16 v8, 0x26

    if-ne v4, v8, :cond_1

    const-string v8, "&amp;"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    sub-int/2addr v5, v7

    invoke-direct {p0, v5}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsSetWbxmlData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsSetWbxmlSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetWbxmlDataSize(I)V

    return-void
.end method

.method private idmTndsSetXMLData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetXMLData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsSetXMLSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetXMLDataSize(I)V

    return-void
.end method


# virtual methods
.method public idmTndsXml2WbxmlConvert(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsInitConvert(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result p1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v0, 0x0

    aget-char p2, p2, v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    const/16 p1, 0xa

    if-eq p2, p1, :cond_2

    const/16 p1, 0x3c

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertCheckTag()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsConvertSkip1Byte()V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLSize()I

    move-result p1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    aget-char p2, p2, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsXmltoWbxmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
