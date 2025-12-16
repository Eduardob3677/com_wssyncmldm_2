.class Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;
    }
.end annotation


# instance fields
.field private tagManage:Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;

.field private tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private idmTndsGetTagString(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x7d

    if-ge p1, p0, :cond_0

    add-int/lit8 p1, p1, -0x45

    sget-object p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;->gszTndsTokenStr:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p0, "NULL"

    return-object p0
.end method

.method private idmTndsGetWbxmlData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmTndsGetWbxmlSize()I
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetWbxmlDataSize()I

    move-result p0

    return p0
.end method

.method private idmTndsGetXMLData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmTndsGetXMLSize()I
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsGetXMLDataSize()I

    move-result p0

    return p0
.end method

.method private idmTndsInitParse(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;-><init>()V

    iput-object v0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-direct {p0, p2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, p1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    new-instance p1, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;-><init>(Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$1;)V

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tagManage:Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;

    return-void
.end method

.method private idmTndsMakeCloseTagString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsManagePopTag()I

    move-result v0

    const-string v1, "</"

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetTagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmTndsMakeOpenTagString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "<"

    invoke-direct {p0, p1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetTagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmTndsManagePopTag()I
    .locals 3

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tagManage:Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;

    iget v0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->nTagSP:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->nTagSP:I

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->eTagID:[I

    aget v2, p0, v0

    aput v1, p0, v0

    return v2
.end method

.method private idmTndsManagePushTag(I)Z
    .locals 2

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tagManage:Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;

    iget v0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->nTagSP:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->eTagID:[I

    aput p1, v1, v0

    const/4 p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->nTagSP:I

    return p1
.end method

.method private idmTndsParsingACLTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingAccessTypeChildElement()V
    .locals 6

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLSize()I

    move-result v4

    add-int/lit8 v2, v2, -0x40

    const/16 v5, 0x47

    if-eq v2, v5, :cond_0

    const/16 v5, 0x4e

    if-eq v2, v5, :cond_0

    const/16 v5, 0x53

    if-eq v2, v5, :cond_0

    const/16 v5, 0x5a

    if-eq v2, v5, :cond_0

    const/16 v5, 0x5d

    if-eq v2, v5, :cond_0

    const/16 v5, 0x6e

    if-eq v2, v5, :cond_0

    return-void

    :cond_0
    const-string v5, "<"

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetTagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "/>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v3}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsParsingAccessTypeTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingAccessTypeChildElement()V

    return-void
.end method

.method private idmTndsParsingCloseTag()V
    .locals 6

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLSize()I

    move-result v3

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsMakeCloseTagString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsParsingCodePage()Z
    .locals 5

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v2, "TNDS"

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "SYNCML"

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    return v1

    :cond_1
    return v2
.end method

.method private idmTndsParsingFormatChildElement()V
    .locals 6

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLSize()I

    move-result v4

    add-int/lit8 v2, v2, 0x40

    const/16 v5, 0x50

    if-eq v2, v5, :cond_0

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_0

    const/16 v5, 0x5e

    if-eq v2, v5, :cond_0

    const/16 v5, 0x65

    if-eq v2, v5, :cond_0

    const/16 v5, 0x67

    if-eq v2, v5, :cond_0

    const/16 v5, 0x72

    if-eq v2, v5, :cond_0

    const/16 v5, 0x7c

    if-eq v2, v5, :cond_0

    const/16 v5, 0x69

    if-eq v2, v5, :cond_0

    const/16 v5, 0x6a

    if-eq v2, v5, :cond_0

    const/16 v5, 0x79

    if-eq v2, v5, :cond_0

    const/16 v5, 0x7a

    if-eq v2, v5, :cond_0

    packed-switch v2, :pswitch_data_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "<"

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetTagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "/>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private idmTndsParsingFormatTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingFormatChildElement()V

    return-void
.end method

.method private idmTndsParsingMIMETag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingMgmtTreeTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingNameTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingNodeNameTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingNodeTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingOpenTag()V
    .locals 6

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLSize()I

    move-result v5

    invoke-direct {p0, v3}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsManagePushTag(I)Z

    invoke-direct {p0, v3}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsMakeOpenTagString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLSize(I)V

    invoke-direct {p0, v4}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsParsingPathTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingRTPropertiesTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingTypeTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingValueTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingVerdtdTag()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingOpenTag()V

    return-void
.end method

.method private idmTndsParsingWbxmlHeader()V
    .locals 3

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    add-int/2addr v1, v2

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    return-void
.end method

.method private idmTndsProcessStringData()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLSize()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v4

    :goto_0
    if-eqz v6, :cond_1

    const/16 v8, 0x26

    if-ne v6, v8, :cond_0

    const-string v6, "&amp;"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_0

    :cond_1
    add-int/2addr v3, v7

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLSize(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetXMLData(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v7, v4

    sub-int/2addr v1, v7

    invoke-direct {p0, v1}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlSize(I)V

    invoke-direct {p0, v0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsSetWbxmlData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsSetWbxmlSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetWbxmlDataSize(I)V

    return-void
.end method

.method private idmTndsSetXMLData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetXMLData(Ljava/lang/String;)V

    return-void
.end method

.method private idmTndsSetXMLSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->tndsData:Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->idmTndsSetXMLDataSize(I)V

    return-void
.end method

.method private idmTndsUderMgmtTreeTagParse()Z
    .locals 3

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_8

    const/16 v2, 0x61

    if-eq v0, v2, :cond_7

    const/16 v2, 0x66

    if-eq v0, v2, :cond_6

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_5

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x45

    if-eq v0, v2, :cond_3

    const/16 v2, 0x46

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63

    if-eq v0, v2, :cond_1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingVerdtdTag()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingValueTag()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingTypeTag()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingNodeTag()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingNameTag()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingACLTag()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingAccessTypeTag()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingRTPropertiesTag()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingPathTag()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingNodeNameTag()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingMIMETag()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingFormatTag()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsProcessStringData()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingCloseTag()V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingCodePage()Z

    :goto_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    return v2

    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public idmTndsWbxmlParse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsInitParse(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result p1

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x60

    if-eq p1, v0, :cond_1

    return-object p2

    :cond_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingMgmtTreeTag()V

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsUderMgmtTreeTagParse()Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingWbxmlHeader()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsParsingCodePage()Z

    :goto_1
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlSize()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetWbxmlData()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;->idmTndsGetXMLData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
