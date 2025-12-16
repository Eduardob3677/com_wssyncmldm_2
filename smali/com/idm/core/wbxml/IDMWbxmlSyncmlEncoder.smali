.class Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/wbxml/IDMWbxmlConstants;
.implements Lcom/idm/core/syncml/Constants;


# instance fields
.field private out:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private idmWbxmlAddContent(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEncodeAddContent(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlAddElement(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddContent(Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    invoke-direct {p0, p2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddContent(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    :cond_2
    :goto_0
    return-void
.end method

.method private idmWbxmlAddEmptyElement(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEncodeStartElement(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    return v0
.end method

.method private idmWbxmlAppendByte(I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlAppendMultiByteUInt32(I)Z
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, p1, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    shr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_1

    :goto_1
    const/4 p1, 0x1

    if-le v3, p1, :cond_0

    iget-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v0, v3

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return p1

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private idmWbxmlAppendSwitchpage(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendByte(I)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private idmWbxmlAppendToBuffer(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private idmWbxmlEncodeAddContent(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendByte(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendToBuffer(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private idmWbxmlEncodeAddContentOpaque([C)Z
    .locals 4

    const/16 v0, 0xc3

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendByte(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendMultiByteUInt32(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v2, p1, v1

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private idmWbxmlEncodeEndElement()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendByte(I)Z

    move-result p0

    return p0
.end method

.method private idmWbxmlEncodeStartDocument(IILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendByte(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendMultiByteUInt32(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendMultiByteUInt32(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendMultiByteUInt32(I)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendMultiByteUInt32(I)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendToBuffer(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private idmWbxmlEncodeStartElement(IZ)Z
    .locals 0

    if-eqz p2, :cond_0

    or-int/lit8 p1, p1, 0x40

    :cond_0
    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendByte(I)Z

    move-result p0

    return p0
.end method

.method private idmWbxmlEndElement()I
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEncodeEndElement()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlGetBuffer()Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method private idmWbxmlGetBufferSize()I
    .locals 0

    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    return p0
.end method

.method private idmWbxmlMakeAdd(Lcom/idm/core/syncml/Add;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeAlert(Lcom/idm/core/syncml/Alert;)I
    .locals 2

    const/4 v0, 0x6

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x3c

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getCorrelator()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0xf

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private idmWbxmlMakeAtomic(Lcom/idm/core/syncml/Atomic;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Command;

    instance-of v1, v0, Lcom/idm/core/syncml/Alert;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/idm/core/syncml/Alert;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeAlert(Lcom/idm/core/syncml/Alert;)I

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/idm/core/syncml/Replace;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/idm/core/syncml/Replace;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeReplace(Lcom/idm/core/syncml/Replace;)I

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/idm/core/syncml/Add;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/idm/core/syncml/Add;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeAdd(Lcom/idm/core/syncml/Add;)I

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/idm/core/syncml/Copy;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/idm/core/syncml/Copy;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeCopy(Lcom/idm/core/syncml/Copy;)I

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/idm/core/syncml/Delete;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/idm/core/syncml/Delete;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeDelete(Lcom/idm/core/syncml/Delete;)I

    goto :goto_0

    :cond_6
    const-string v0, "now not support wbxml encoder"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeCommandList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Command;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Command;

    instance-of v1, v0, Lcom/idm/core/syncml/Status;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/idm/core/syncml/Status;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeStatus(Lcom/idm/core/syncml/Status;)I

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/idm/core/syncml/Results;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/idm/core/syncml/Results;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeResults(Lcom/idm/core/syncml/Results;)I

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/idm/core/syncml/Alert;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/idm/core/syncml/Alert;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeAlert(Lcom/idm/core/syncml/Alert;)I

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/idm/core/syncml/Replace;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/idm/core/syncml/Replace;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeReplace(Lcom/idm/core/syncml/Replace;)I

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/idm/core/syncml/Add;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/idm/core/syncml/Add;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeAdd(Lcom/idm/core/syncml/Add;)I

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/idm/core/syncml/Copy;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/idm/core/syncml/Copy;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeCopy(Lcom/idm/core/syncml/Copy;)I

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/idm/core/syncml/Delete;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/idm/core/syncml/Delete;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeDelete(Lcom/idm/core/syncml/Delete;)I

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/idm/core/syncml/Get;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/idm/core/syncml/Get;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeGet(Lcom/idm/core/syncml/Get;)I

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lcom/idm/core/syncml/Exec;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/idm/core/syncml/Exec;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeExec(Lcom/idm/core/syncml/Exec;)I

    goto :goto_0

    :cond_8
    instance-of v1, v0, Lcom/idm/core/syncml/Atomic;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/idm/core/syncml/Atomic;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeAtomic(Lcom/idm/core/syncml/Atomic;)I

    goto :goto_0

    :cond_9
    instance-of v1, v0, Lcom/idm/core/syncml/Sequence;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/idm/core/syncml/Sequence;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeSequence(Lcom/idm/core/syncml/Sequence;)I

    goto :goto_0

    :cond_a
    const-string v0, "now not support wbxml encoder"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    return-void
.end method

.method private idmWbxmlMakeCopy(Lcom/idm/core/syncml/Copy;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeCred(Lcom/idm/core/syncml/Cred;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    return v0
.end method

.method private idmWbxmlMakeDelete(Lcom/idm/core/syncml/Delete;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeEndSyncbody(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddEmptyElement(I)I

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeEndSyncml()I
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEncodeEndElement()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeExec(Lcom/idm/core/syncml/Exec;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x3c

    invoke-virtual {p1}, Lcom/idm/core/syncml/Exec;->getCorrelator()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeGet(Lcom/idm/core/syncml/Get;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeItem(Lcom/idm/core/syncml/Item;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeTarget(Lcom/idm/core/syncml/Target;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeSource(Lcom/idm/core/syncml/Source;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    const/16 v0, 0xf

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x34

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddEmptyElement(I)I

    :cond_4
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItem(Lcom/idm/core/syncml/Item;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendSwitchpage(I)Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v1, 0x13

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v1, 0x12

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v1, 0xc

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v1, 0x15

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAppendSwitchpage(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    return v0
.end method

.method private idmWbxmlMakeReplace(Lcom/idm/core/syncml/Replace;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeResults(Lcom/idm/core/syncml/Results;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x1c

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    return v0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x28

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeSequence(Lcom/idm/core/syncml/Sequence;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Command;

    instance-of v1, v0, Lcom/idm/core/syncml/Alert;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/idm/core/syncml/Alert;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeAlert(Lcom/idm/core/syncml/Alert;)I

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/idm/core/syncml/Replace;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/idm/core/syncml/Replace;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeReplace(Lcom/idm/core/syncml/Replace;)I

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/idm/core/syncml/Add;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/idm/core/syncml/Add;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeAdd(Lcom/idm/core/syncml/Add;)I

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/idm/core/syncml/Copy;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/idm/core/syncml/Copy;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeCopy(Lcom/idm/core/syncml/Copy;)I

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/idm/core/syncml/Delete;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/idm/core/syncml/Delete;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeDelete(Lcom/idm/core/syncml/Delete;)I

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/idm/core/syncml/Get;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/idm/core/syncml/Get;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeGet(Lcom/idm/core/syncml/Get;)I

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lcom/idm/core/syncml/Exec;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/idm/core/syncml/Exec;

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeExec(Lcom/idm/core/syncml/Exec;)I

    goto :goto_0

    :cond_8
    const-string v0, "now not support wbxml encoder"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeSource(Lcom/idm/core/syncml/Source;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v1, 0x17

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v1, 0x16

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    return v0
.end method

.method private idmWbxmlMakeStartSyncbody()I
    .locals 1

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeStartSyncml(IILjava/lang/String;)I
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEncodeStartDocument(IILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/16 p1, 0x2d

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeStatus(Lcom/idm/core/syncml/Status;)I
    .locals 3

    const/4 v0, 0x6

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeStatus cmd.cmd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeStatus cmd.data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x1c

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x28

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getChal()Lcom/idm/core/syncml/Chal;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getChal()Lcom/idm/core/syncml/Chal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/core/syncml/Chal;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    :cond_3
    const/16 v0, 0xf

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeItemlist(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p1, :cond_4

    return p1

    :cond_4
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method private idmWbxmlMakeSyncBody(Lcom/idm/core/syncml/SyncBody;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeStartSyncbody()I

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeCommandList(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->isFinalMsg()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeEndSyncbody(Z)I

    :cond_0
    return-void
.end method

.method private idmWbxmlMakeSyncHeader(Lcom/idm/core/syncml/SyncHdr;)I
    .locals 2

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerDTD()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x31

    invoke-direct {p0, v1, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x32

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerProto()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x25

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x1b

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v0, 0x21

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getRespURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeTarget(Lcom/idm/core/syncml/Target;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeSource(Lcom/idm/core/syncml/Source;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getCred()Lcom/idm/core/syncml/Cred;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeCred(Lcom/idm/core/syncml/Cred;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeMeta(Lcom/idm/core/syncml/Meta;)I

    move-result p1

    if-eqz p1, :cond_3

    return p1

    :cond_3
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlMakeTarget(Lcom/idm/core/syncml/Target;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlStartElement(I)I

    const/16 v1, 0x17

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    const/16 v1, 0x16

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlAddElement(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEndElement()I

    return v0
.end method

.method private idmWbxmlStartElement(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlEncodeStartElement(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public idmWbxmlEncode(Lcom/idm/core/syncml/SyncML;)[B
    .locals 3

    :try_start_0
    const-string v0, "-//SYNCML//DTD SyncML 1.2//EN"

    const/4 v1, 0x0

    const/16 v2, 0x6a

    invoke-direct {p0, v1, v2, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeStartSyncml(IILjava/lang/String;)I

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeSyncHeader(Lcom/idm/core/syncml/SyncHdr;)I

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeSyncBody(Lcom/idm/core/syncml/SyncBody;)V

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->idmWbxmlMakeEndSyncml()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
