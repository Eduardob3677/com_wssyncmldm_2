.class Lcom/idm/core/xml/IDMXmlSyncmlEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;


# instance fields
.field private serializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private idmSyncmlMakeAdd(Lcom/idm/core/syncml/Add;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Add"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeAlert(Lcom/idm/core/syncml/Alert;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Alert"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Data"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Correlator"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getCorrelator()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeAtomic(Lcom/idm/core/syncml/Atomic;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Atomic"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeCommandList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeChal(Lcom/idm/core/syncml/Chal;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Chal"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Chal;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeMeta(Lcom/idm/core/syncml/Meta;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeCommandList(Ljava/util/ArrayList;)V
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

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Command;

    instance-of v1, v0, Lcom/idm/core/syncml/Status;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/idm/core/syncml/Status;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeStatus(Lcom/idm/core/syncml/Status;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/idm/core/syncml/Results;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/idm/core/syncml/Results;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeResults(Lcom/idm/core/syncml/Results;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/idm/core/syncml/Alert;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/idm/core/syncml/Alert;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeAlert(Lcom/idm/core/syncml/Alert;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/idm/core/syncml/Add;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/idm/core/syncml/Add;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeAdd(Lcom/idm/core/syncml/Add;)V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/idm/core/syncml/Copy;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/idm/core/syncml/Copy;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeCopy(Lcom/idm/core/syncml/Copy;)V

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/idm/core/syncml/Delete;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/idm/core/syncml/Delete;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeDelete(Lcom/idm/core/syncml/Delete;)V

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/idm/core/syncml/Get;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/idm/core/syncml/Get;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeGet(Lcom/idm/core/syncml/Get;)V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lcom/idm/core/syncml/Replace;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/idm/core/syncml/Replace;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeReplace(Lcom/idm/core/syncml/Replace;)V

    goto :goto_0

    :cond_8
    instance-of v1, v0, Lcom/idm/core/syncml/Exec;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/idm/core/syncml/Exec;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeExec(Lcom/idm/core/syncml/Exec;)V

    goto :goto_0

    :cond_9
    instance-of v1, v0, Lcom/idm/core/syncml/Atomic;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/idm/core/syncml/Atomic;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeAtomic(Lcom/idm/core/syncml/Atomic;)V

    goto :goto_0

    :cond_a
    instance-of v1, v0, Lcom/idm/core/syncml/Sequence;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/idm/core/syncml/Sequence;

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeSequence(Lcom/idm/core/syncml/Sequence;)V

    goto :goto_0

    :cond_b
    return-void
.end method

.method private idmSyncmlMakeCopy(Lcom/idm/core/syncml/Copy;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Copy"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeCred(Lcom/idm/core/syncml/Cred;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Cred"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeMeta(Lcom/idm/core/syncml/Meta;)V

    const-string v0, "Data"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeDelete(Lcom/idm/core/syncml/Delete;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Delete"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeExec(Lcom/idm/core/syncml/Exec;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Exec"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Correlator"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Exec;->getCorrelator()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeGet(Lcom/idm/core/syncml/Get;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Get"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeItemList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/syncml/Item;

    iget-object v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "Item"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTarget(Lcom/idm/core/syncml/Target;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeSource(Lcom/idm/core/syncml/Source;)V

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeMeta(Lcom/idm/core/syncml/Meta;)V

    const-string v1, "Data"

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MoreData"

    invoke-virtual {v0}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTag(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeMeta(Lcom/idm/core/syncml/Meta;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Meta"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "Format"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns"

    const-string v5, "syncml:metinf"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Type"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Size"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NextNonce"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MaxMsgSize"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MaxObjSize"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v4, v5, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeReplace(Lcom/idm/core/syncml/Replace;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Replace"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeResults(Lcom/idm/core/syncml/Results;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Results"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsgRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CmdRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TargetRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SourceRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeSequence(Lcom/idm/core/syncml/Sequence;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Sequence"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeCommandList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeSource(Lcom/idm/core/syncml/Source;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Source"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "LocURI"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LocName"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeStatus(Lcom/idm/core/syncml/Status;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Status"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsgRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CmdRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cmd"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TargetRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SourceRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getChal()Lcom/idm/core/syncml/Chal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeChal(Lcom/idm/core/syncml/Chal;)V

    const-string v0, "Data"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeItemList(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeSyncBody(Lcom/idm/core/syncml/SyncBody;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "SyncBody"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeCommandList(Ljava/util/ArrayList;)V

    const-string v0, "Final"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->isFinalMsg()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTag(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeSyncHeader(Lcom/idm/core/syncml/SyncHdr;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "SyncHdr"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "VerDTD"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerDTD()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VerProto"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerProto()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SessionID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsgID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTarget(Lcom/idm/core/syncml/Target;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeSource(Lcom/idm/core/syncml/Source;)V

    const-string v0, "RespURI"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getRespURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getCred()Lcom/idm/core/syncml/Cred;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeCred(Lcom/idm/core/syncml/Cred;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeMeta(Lcom/idm/core/syncml/Meta;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeTag(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeTagWithAttrContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p2, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, p4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method private idmSyncmlMakeTarget(Lcom/idm/core/syncml/Target;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Target"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "LocURI"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LocName"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeTagWithContent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method


# virtual methods
.method public idmSyncmlEncode(Lcom/idm/core/syncml/SyncML;)[B
    .locals 4

    const-string v0, "SyncML"

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    iput-object v2, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeSyncHeader(Lcom/idm/core/syncml/SyncHdr;)V

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlMakeSyncBody(Lcom/idm/core/syncml/SyncBody;)V

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v3
.end method
