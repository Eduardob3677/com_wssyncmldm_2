.class Lcom/idm/core/tnds/IDMTndsXmlEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/tnds/IDMTndsConstants;


# instance fields
.field private serializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private idmTndsXmlMakeFormat(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Format"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeTag(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmTndsXmlMakeNodes(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/tnds/IDMTndsNodeInfo;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    iget-object v1, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "Node"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NodeName"

    invoke-direct {p0, v4, v1}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeRTProperties(Lcom/idm/core/tnds/IDMTndsNodeInfo;I)V

    invoke-virtual {v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    invoke-virtual {v4}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    invoke-virtual {v5}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetDepth()I

    move-result v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeNodes(Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private idmTndsXmlMakeRTProperties(Lcom/idm/core/tnds/IDMTndsNodeInfo;I)V
    .locals 6

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v4, p2, 0x1

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    const/16 v5, 0x8

    and-int/2addr p2, v5

    if-ne p2, v5, :cond_3

    move v1, v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    :cond_7
    iget-object p2, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v5, "RTProperties"

    invoke-interface {p2, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeFormat(Ljava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v4, :cond_a

    const-string p2, "ACL"

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v1, :cond_b

    const-string p2, "Value"

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    return-void
.end method

.method private idmTndsXmlMakeTag(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmTndsXmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p2, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, p4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmTndsXmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmTndsXmlMakeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Type"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DDFName"

    invoke-direct {p0, p1, p2}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MIME"

    invoke-direct {p0, p1, p2}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method


# virtual methods
.method public idmTndsXmlDataEncode(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/tnds/IDMTndsNodeInfo;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "MgmtTree"

    const-string v1, "SyncML"

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    iput-object v3, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "VerDTD"

    const-string v5, "1.2"

    invoke-direct {p0, v3, v5}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->idmTndsXmlMakeNodes(Ljava/util/ArrayList;II)V

    iget-object p1, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p1, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v4
.end method
