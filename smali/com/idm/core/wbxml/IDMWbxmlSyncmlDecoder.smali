.class Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/wbxml/IDMWbxmlConstants;


# instance fields
.field private add:Lcom/idm/core/syncml/Add;

.field private alert:Lcom/idm/core/syncml/Alert;

.field private chal:Lcom/idm/core/syncml/Chal;

.field private charset:I

.field private codePage:I

.field private copy:Lcom/idm/core/syncml/Copy;

.field private cred:Lcom/idm/core/syncml/Cred;

.field private delete:Lcom/idm/core/syncml/Delete;

.field private element:Ljava/lang/String;

.field private exec:Lcom/idm/core/syncml/Exec;

.field private get:Lcom/idm/core/syncml/Get;

.field private meta:Lcom/idm/core/syncml/Meta;

.field private pcdata:Ljava/lang/String;

.field private publicId:I

.field private replace:Lcom/idm/core/syncml/Replace;

.field private results:Lcom/idm/core/syncml/Results;

.field private source:Lcom/idm/core/syncml/Source;

.field private status:Lcom/idm/core/syncml/Status;

.field private stringTable:Ljava/lang/String;

.field private syncML:Lcom/idm/core/syncml/SyncML;

.field private target:Lcom/idm/core/syncml/Target;

.field private version:I

.field private wbxbuff:[B

.field private wbxindex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/core/syncml/SyncML;

    invoke-direct {v0}, Lcom/idm/core/syncml/SyncML;-><init>()V

    iput-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->syncML:Lcom/idm/core/syncml/SyncML;

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    iput v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    return-void
.end method

.method private idmWbxmlCheckElement(I)I
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result p0

    if-eq p1, p0, :cond_0

    const-string p0, "idmWbxmlCheckElement is WBXML_ERR_UNKNOWN_ELEMENT"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private idmWbxmlCheckZeroBitTag()I
    .locals 3

    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxbuff:[B

    iget v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x3f

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/16 v2, 0x3c

    if-gt v1, v2, :cond_0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-string v0, "WBXML_ERR_ZEROBIT_TAG"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    return v0
.end method

.method private idmWbxmlDecodeAdd()I
    .locals 5

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Add;

    invoke-direct {v1}, Lcom/idm/core/syncml/Add;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->add:Lcom/idm/core/syncml/Add;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_8

    const/16 v3, 0xb

    if-eq v1, v3, :cond_7

    const/16 v3, 0x14

    if-eq v1, v3, :cond_6

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->add:Lcom/idm/core/syncml/Add;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->add:Lcom/idm/core/syncml/Add;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeAlert()I
    .locals 5

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Alert;

    invoke-direct {v1}, Lcom/idm/core/syncml/Alert;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->alert:Lcom/idm/core/syncml/Alert;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_8

    const/16 v3, 0xb

    if-eq v1, v3, :cond_7

    const/16 v3, 0xf

    if-eq v1, v3, :cond_6

    const/16 v3, 0x14

    if-eq v1, v3, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->alert:Lcom/idm/core/syncml/Alert;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Alert;->setData(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->alert:Lcom/idm/core/syncml/Alert;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeAtomic()Lcom/idm/core/syncml/Atomic;
    .locals 7

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-object v2

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v3, Lcom/idm/core/syncml/Atomic;

    invoke-direct {v3}, Lcom/idm/core/syncml/Atomic;-><init>()V

    const/4 v4, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return-object v3

    :cond_4
    if-eqz v4, :cond_10

    if-eq v4, v0, :cond_f

    const/16 v5, 0xb

    if-eq v4, v5, :cond_e

    const/16 v5, 0xd

    if-eq v4, v5, :cond_d

    const/16 v5, 0x13

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_b

    const/16 v5, 0x20

    if-eq v4, v5, :cond_a

    const/16 v5, 0x24

    if-eq v4, v5, :cond_9

    const/4 v1, 0x5

    if-eq v4, v1, :cond_8

    const/4 v1, 0x6

    if-eq v4, v1, :cond_7

    const/16 v1, 0x10

    if-eq v4, v1, :cond_6

    const/16 v1, 0x11

    if-eq v4, v1, :cond_5

    const/4 v1, 0x2

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeExec()I

    move-result v1

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeDelete()I

    move-result v1

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAlert()I

    move-result v1

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAdd()I

    move-result v1

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSequence()Lcom/idm/core/syncml/Sequence;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeReplace()I

    move-result v1

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v1

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v5}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeGet()I

    move-result v1

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeCopy()I

    move-result v1

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAtomic()Lcom/idm/core/syncml/Atomic;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v3}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v4

    iput v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :cond_11
    :goto_1
    if-eqz v1, :cond_3

    return-object v2
.end method

.method private idmWbxmlDecodeBlankElement(I)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method private idmWbxmlDecodeChal()I
    .locals 2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v0, Lcom/idm/core/syncml/Chal;

    invoke-direct {v0}, Lcom/idm/core/syncml/Chal;-><init>()V

    iput-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->chal:Lcom/idm/core/syncml/Chal;

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->chal:Lcom/idm/core/syncml/Chal;

    iget-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v0, v1}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result p0

    return p0
.end method

.method private idmWbxmlDecodeContent()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStringInline()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v2, 0x83

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStringTableRef()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v2, 0xc3

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeExtension(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlSkipElement()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    return-object v0

    :goto_0
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private idmWbxmlDecodeCopy()I
    .locals 5

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Copy;

    invoke-direct {v1}, Lcom/idm/core/syncml/Copy;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->copy:Lcom/idm/core/syncml/Copy;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_8

    const/16 v3, 0xb

    if-eq v1, v3, :cond_7

    const/16 v3, 0x14

    if-eq v1, v3, :cond_6

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->copy:Lcom/idm/core/syncml/Copy;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->copy:Lcom/idm/core/syncml/Copy;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeCred()I
    .locals 4

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Lcom/idm/core/syncml/Cred;

    invoke-direct {v1}, Lcom/idm/core/syncml/Cred;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->cred:Lcom/idm/core/syncml/Cred;

    const/4 v1, -0x1

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v0

    :cond_2
    if-eqz v1, :cond_5

    const/16 v0, 0xf

    if-eq v1, v0, :cond_4

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->cred:Lcom/idm/core/syncml/Cred;

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v2, v3}, Lcom/idm/core/syncml/Cred;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->cred:Lcom/idm/core/syncml/Cred;

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/idm/core/syncml/Cred;->setData(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_1

    return v0
.end method

.method private idmWbxmlDecodeDelete()I
    .locals 5

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Delete;

    invoke-direct {v1}, Lcom/idm/core/syncml/Delete;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->delete:Lcom/idm/core/syncml/Delete;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_8

    const/16 v3, 0xb

    if-eq v1, v3, :cond_7

    const/16 v3, 0x14

    if-eq v1, v3, :cond_6

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->delete:Lcom/idm/core/syncml/Delete;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->delete:Lcom/idm/core/syncml/Delete;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeElement(I)I
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlSkipLiteralElement()I

    move-result p1

    if-eqz p1, :cond_3

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result p1

    const/16 v1, 0x83

    const/4 v2, 0x1

    if-ne p1, v1, :cond_6

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStringTableRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result p1

    if-ne p1, v2, :cond_5

    iget p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    goto :goto_0

    :cond_6
    iget p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result p0

    return p0

    :goto_2
    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private idmWbxmlDecodeExec()I
    .locals 5

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Exec;

    invoke-direct {v1}, Lcom/idm/core/syncml/Exec;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_9

    const/16 v3, 0xb

    if-eq v1, v3, :cond_8

    const/16 v3, 0x14

    if-eq v1, v3, :cond_7

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_6

    const/16 v0, 0x3c

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Exec;->setCorrelator(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeExtension(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0xc3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferMultiByteUInt32()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object v2
.end method

.method private idmWbxmlDecodeGet()I
    .locals 5

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Get;

    invoke-direct {v1}, Lcom/idm/core/syncml/Get;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->get:Lcom/idm/core/syncml/Get;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_8

    const/16 v3, 0xb

    if-eq v1, v3, :cond_7

    const/16 v3, 0x14

    if-eq v1, v3, :cond_6

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->get:Lcom/idm/core/syncml/Get;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->get:Lcom/idm/core/syncml/Get;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeItem(Lcom/idm/core/syncml/Item;)I
    .locals 3

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    const-string v1, "not WBXML_ERR_OK"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v0

    :cond_4
    if-eqz v1, :cond_a

    const/16 v2, 0xf

    if-eq v1, v2, :cond_9

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_8

    const/16 v2, 0x27

    if-eq v1, v2, :cond_7

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_6

    const/16 v2, 0x34

    if-eq v1, v2, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeBlankElement(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/Item;->setMoreData(Z)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeTarget()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->target:Lcom/idm/core/syncml/Target;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/Item;->setTarget(Lcom/idm/core/syncml/Target;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSource()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->source:Lcom/idm/core/syncml/Source;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/Item;->setSource(Lcom/idm/core/syncml/Source;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/Item;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodePcdata(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->pcdata:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lcom/idm/core/syncml/Item;

    invoke-direct {v1}, Lcom/idm/core/syncml/Item;-><init>()V

    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItem(Lcom/idm/core/syncml/Item;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private idmWbxmlDecodeMeta()I
    .locals 5

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    return v0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v0

    :cond_3
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-direct {p0, v3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iput v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    new-instance v2, Lcom/idm/core/syncml/Meta;

    invoke-direct {v2}, Lcom/idm/core/syncml/Meta;-><init>()V

    iput-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    :cond_6
    :try_start_1
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    if-ne v1, v3, :cond_7

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v0

    :cond_7
    if-eqz v1, :cond_e

    const/4 v0, 0x7

    if-eq v1, v0, :cond_d

    const/16 v0, 0xc

    if-eq v1, v0, :cond_c

    const/16 v0, 0x10

    if-eq v1, v0, :cond_b

    const/16 v0, 0x15

    if-eq v1, v0, :cond_a

    const/16 v0, 0x12

    if-eq v1, v0, :cond_9

    const/16 v0, 0x13

    if-eq v1, v0, :cond_8

    const/4 v0, 0x2

    goto :goto_2

    :cond_8
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/idm/core/syncml/Meta;->setSize(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/idm/core/syncml/Meta;->setMaxObjSize(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/idm/core/syncml/Meta;->setNextNonce(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/idm/core/syncml/Meta;->setMaxMsgSize(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/idm/core/syncml/Meta;->setFormat(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_2
    if-eqz v0, :cond_6

    return v0
.end method

.method private idmWbxmlDecodePcdata(I)I
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->pcdata:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return p1

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result p1

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStringInline()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->pcdata:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    const/16 v0, 0x83

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStringTableRef()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->pcdata:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v0, 0xc3

    if-ne p1, v0, :cond_5

    invoke-direct {p0, p1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeExtension(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->pcdata:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result p1

    iput p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result p1

    :cond_6
    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result p1

    if-ne p1, v2, :cond_6

    goto :goto_0

    :cond_8
    iget p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlSkipElement()I

    move-result p1

    if-eqz p1, :cond_9

    return p1

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->pcdata:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_a

    return p0

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_a
    return v1
.end method

.method private idmWbxmlDecodeReplace()I
    .locals 5

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Replace;

    invoke-direct {v1}, Lcom/idm/core/syncml/Replace;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->replace:Lcom/idm/core/syncml/Replace;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_8

    const/16 v3, 0xb

    if-eq v1, v3, :cond_7

    const/16 v3, 0x14

    if-eq v1, v3, :cond_6

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->replace:Lcom/idm/core/syncml/Replace;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->replace:Lcom/idm/core/syncml/Replace;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeResults()I
    .locals 5

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v1, Lcom/idm/core/syncml/Results;

    invoke-direct {v1}, Lcom/idm/core/syncml/Results;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v2

    :cond_4
    if-eqz v1, :cond_c

    const/16 v3, 0x14

    if-eq v1, v3, :cond_b

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_a

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_9

    const/16 v0, 0x28

    if-eq v1, v0, :cond_8

    const/16 v0, 0x2f

    if-eq v1, v0, :cond_7

    const/16 v0, 0xb

    if-eq v1, v0, :cond_6

    const/16 v0, 0xc

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    invoke-virtual {v3}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeSequence()Lcom/idm/core/syncml/Sequence;
    .locals 8

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    return-object v2

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v4, Lcom/idm/core/syncml/Sequence;

    invoke-direct {v4}, Lcom/idm/core/syncml/Sequence;-><init>()V

    const/4 v5, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {v6}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return-object v4

    :cond_4
    if-eqz v5, :cond_10

    if-eq v5, v3, :cond_f

    const/16 v6, 0xb

    if-eq v5, v6, :cond_e

    const/16 v6, 0xd

    if-eq v5, v6, :cond_d

    const/16 v6, 0x13

    if-eq v5, v6, :cond_c

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_b

    const/16 v6, 0x20

    if-eq v5, v6, :cond_a

    if-eq v5, v0, :cond_9

    const/4 v1, 0x5

    if-eq v5, v1, :cond_8

    const/4 v1, 0x6

    if-eq v5, v1, :cond_7

    const/16 v1, 0x10

    if-eq v5, v1, :cond_6

    const/16 v1, 0x11

    if-eq v5, v1, :cond_5

    const/4 v1, 0x2

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeExec()I

    move-result v1

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeDelete()I

    move-result v1

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAlert()I

    move-result v1

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAdd()I

    move-result v1

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSequence()Lcom/idm/core/syncml/Sequence;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeReplace()I

    move-result v1

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v1

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v4, v6}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeGet()I

    move-result v1

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeCopy()I

    move-result v1

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    invoke-direct {p0, v5}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v6, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAtomic()Lcom/idm/core/syncml/Atomic;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v4}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v5

    iput v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :cond_11
    :goto_1
    if-eqz v1, :cond_3

    return-object v2
.end method

.method private idmWbxmlDecodeSource()I
    .locals 2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlSkipElement()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    new-instance v1, Lcom/idm/core/syncml/Source;

    invoke-direct {v1}, Lcom/idm/core/syncml/Source;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->source:Lcom/idm/core/syncml/Source;

    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/idm/core/syncml/Location;->setLocURI(Ljava/lang/String;)V

    return v0
.end method

.method private idmWbxmlDecodeStartDocument()V
    .locals 3

    const-string v0, "charset : "

    const-string v1, "version : "

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result v2

    iput v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->version:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->version:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferMultiByteUInt32()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->publicId:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferMultiByteUInt32()I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferMultiByteUInt32()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->charset:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->charset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStringTable()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->stringTable:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private idmWbxmlDecodeStatus()I
    .locals 6

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance v2, Lcom/idm/core/syncml/Status;

    invoke-direct {v2}, Lcom/idm/core/syncml/Status;-><init>()V

    iput-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    const/4 v2, -0x1

    :cond_3
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v3

    :cond_4
    if-ne v2, v0, :cond_5

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_b

    const/16 v4, 0xf

    if-eq v2, v4, :cond_a

    const/16 v4, 0x14

    if-eq v2, v4, :cond_9

    const/16 v1, 0x1c

    if-eq v2, v1, :cond_8

    const/16 v1, 0x28

    if-eq v2, v1, :cond_7

    const/16 v1, 0x2f

    if-eq v2, v1, :cond_6

    packed-switch v2, :pswitch_data_0

    const-string v1, "WBXML_ERR_UNKNOWN_ELEMENT !!!!!!!"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const/4 v1, 0x2

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/Status;->setCmd(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeChal()I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->chal:Lcom/idm/core/syncml/Chal;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    invoke-virtual {v4}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeItemlist(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/ItemCommand;->setItemList(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, v2}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v1

    iget-object v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v2

    iput v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :goto_2
    if-eqz v1, :cond_3

    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private idmWbxmlDecodeStringInline()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected EOF decodeStringInline"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private idmWbxmlDecodeStringTable()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferMultiByteUInt32()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method private idmWbxmlDecodeStringTableRef()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferMultiByteUInt32()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->stringTable:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->stringTable:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method private idmWbxmlDecodeSyncBody(Lcom/idm/core/syncml/SyncBody;)I
    .locals 6

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not  WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v3, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v1

    :cond_4
    if-eqz v3, :cond_d

    if-eq v3, v2, :cond_c

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    const/16 v4, 0x20

    if-eq v3, v4, :cond_a

    const/16 v4, 0x22

    if-eq v3, v4, :cond_9

    const/16 v4, 0x24

    if-eq v3, v4, :cond_8

    const/16 v4, 0x29

    if-eq v3, v4, :cond_7

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeGet()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeBlankElement(I)Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/idm/core/syncml/SyncBody;->setFinalMsg(Z)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeExec()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeDelete()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAlert()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAdd()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->status:Lcom/idm/core/syncml/Status;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSequence()Lcom/idm/core/syncml/Sequence;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeResults()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->results:Lcom/idm/core/syncml/Results;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeReplace()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeCopy()I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeAtomic()Lcom/idm/core/syncml/Atomic;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v3

    iput v3, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    :cond_e
    :goto_1
    if-eqz v0, :cond_3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private idmWbxmlDecodeSyncHeader(Lcom/idm/core/syncml/SyncHdr;)I
    .locals 5

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    const-string v1, "not WBXML_ERR_OK"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    return v3

    :cond_4
    if-eqz v1, :cond_e

    const/16 v0, 0xe

    if-eq v1, v0, :cond_d

    const/16 v0, 0x21

    if-eq v1, v0, :cond_c

    const/16 v0, 0x25

    if-eq v1, v0, :cond_b

    const/16 v0, 0x27

    if-eq v1, v0, :cond_a

    const/16 v0, 0x2e

    if-eq v1, v0, :cond_9

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_8

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_7

    const/16 v0, 0x31

    if-eq v1, v0, :cond_6

    const/16 v0, 0x32

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setVerProto(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setVerDTD(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setMsgID(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeMeta()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeTarget()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->target:Lcom/idm/core/syncml/Target;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setTarget(Lcom/idm/core/syncml/Target;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSource()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->source:Lcom/idm/core/syncml/Source;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setSource(Lcom/idm/core/syncml/Source;)V

    goto :goto_1

    :cond_b
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setSessionID(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    invoke-direct {p0, v1}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setRespURI(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeCred()I

    move-result v0

    iget-object v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->cred:Lcom/idm/core/syncml/Cred;

    invoke-virtual {p1, v2}, Lcom/idm/core/syncml/SyncHdr;->setCred(Lcom/idm/core/syncml/Cred;)V

    goto :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    iput v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "codePage : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->codePage:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->H(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_3

    const-string p0, "not  WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0
.end method

.method private idmWbxmlDecodeSyncml()I
    .locals 4

    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    const-string v1, "not WBXML_ERR_OK"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    if-eqz v1, :cond_7

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->syncML:Lcom/idm/core/syncml/SyncML;

    new-instance v2, Lcom/idm/core/syncml/SyncHdr;

    invoke-direct {v2}, Lcom/idm/core/syncml/SyncHdr;-><init>()V

    invoke-virtual {v0, v2}, Lcom/idm/core/syncml/SyncML;->setSyncHdr(Lcom/idm/core/syncml/SyncHdr;)V

    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSyncHeader(Lcom/idm/core/syncml/SyncHdr;)I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->syncML:Lcom/idm/core/syncml/SyncML;

    new-instance v2, Lcom/idm/core/syncml/SyncBody;

    invoke-direct {v2}, Lcom/idm/core/syncml/SyncBody;-><init>()V

    invoke-virtual {v0, v2}, Lcom/idm/core/syncml/SyncML;->setSyncBody(Lcom/idm/core/syncml/SyncBody;)V

    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {v0}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSyncBody(Lcom/idm/core/syncml/SyncBody;)I

    move-result v0

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadElement()I

    move-result v1

    :goto_1
    if-eqz v0, :cond_3

    return v0
.end method

.method private idmWbxmlDecodeTarget()I
    .locals 2

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckZeroBitTag()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "not WBXML_ERR_OK"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return v0

    :cond_2
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeElement(I)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlSkipElement()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlCheckElement(I)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    new-instance v1, Lcom/idm/core/syncml/Target;

    invoke-direct {v1}, Lcom/idm/core/syncml/Target;-><init>()V

    iput-object v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->target:Lcom/idm/core/syncml/Target;

    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->element:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/idm/core/syncml/Location;->setLocURI(Ljava/lang/String;)V

    return v0
.end method

.method private idmWbxmlGetCurrentElement()I
    .locals 1

    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxbuff:[B

    iget p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method private idmWbxmlReadBufferByte()I
    .locals 3

    iget-object v0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxbuff:[B

    iget v1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxindex:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private idmWbxmlReadBufferMultiByteUInt32()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_2

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result v3

    if-gez v3, :cond_0

    return v0

    :cond_0
    shl-int/lit8 v2, v2, 0x7

    and-int/lit8 v4, v3, 0x7f

    or-int/2addr v2, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private idmWbxmlReadElement()I
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x3f

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private idmWbxmlSkipElement()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    :goto_1
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/16 v3, 0x83

    if-eq v2, v3, :cond_5

    const/16 v3, 0xc3

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return v0
.end method

.method private idmWbxmlSkipLiteralElement()I
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlReadBufferByte()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public idmWbxmlDecode([B)Lcom/idm/core/syncml/SyncML;
    .locals 2

    const-string v0, "decode"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "buf is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-object v0

    :cond_0
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->wbxbuff:[B

    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeStartDocument()V

    :try_start_0
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlGetCurrentElement()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    :goto_0
    const/16 v1, 0x2d

    if-eq p1, v1, :cond_1

    const-string p0, "not WBXML_TAG_SYNCML"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->idmWbxmlDecodeSyncml()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/idm/core/wbxml/IDMWbxmlSyncmlDecoder;->syncML:Lcom/idm/core/syncml/SyncML;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "result : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    return-object v0
.end method
