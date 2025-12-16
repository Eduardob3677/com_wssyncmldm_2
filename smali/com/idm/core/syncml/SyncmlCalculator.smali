.class public Lcom/idm/core/syncml/SyncmlCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;


# instance fields
.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/core/syncml/SyncmlCalculator;->mimeType:Ljava/lang/String;

    return-void
.end method

.method private getCommandWBXMLSize(Lcom/idm/core/syncml/Command;)I
    .locals 1

    instance-of v0, p1, Lcom/idm/core/syncml/Alert;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/idm/core/syncml/Alert;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Alert;)I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/idm/core/syncml/Replace;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/idm/core/syncml/Replace;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Replace;)I

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/idm/core/syncml/Status;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/idm/core/syncml/Status;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Status;)I

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/idm/core/syncml/Results;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/idm/core/syncml/Results;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Results;)I

    move-result p0

    goto :goto_0

    :cond_3
    const-string p0, "other commands!!!!!!!!!!!!"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCommandXMLSize(Lcom/idm/core/syncml/Command;)I
    .locals 1

    instance-of v0, p1, Lcom/idm/core/syncml/Alert;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/idm/core/syncml/Alert;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Alert;)I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/idm/core/syncml/Replace;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/idm/core/syncml/Replace;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Replace;)I

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/idm/core/syncml/Status;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/idm/core/syncml/Status;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Status;)I

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/idm/core/syncml/Results;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/idm/core/syncml/Results;

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Results;)I

    move-result p0

    goto :goto_0

    :cond_3
    const-string p0, "other commands!!!!!!!!!!!!"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->E(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Alert;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getCorrelator()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Chal;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Chal;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Cred;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Item;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Location;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Location;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result p0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Location;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Meta;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Replace;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Results;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/Status;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getChal()Lcom/idm/core/syncml/Chal;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Chal;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/SyncBody;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->isFinalMsg()Z

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Command;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getCommandWBXMLSize(Lcom/idm/core/syncml/Command;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/SyncHdr;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerDTD()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerProto()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Location;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Location;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getRespURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getCred()Lcom/idm/core/syncml/Cred;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Cred;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getWBXMLSize(Lcom/idm/core/syncml/SyncML;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/SyncHdr;)I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/SyncBody;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getWBXMLSize(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Alert;)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Alert"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    const-string v1, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Correlator"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getCorrelator()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Data"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Alert;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Chal;)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Chal"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Chal;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Cred;)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Cred"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Data"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Cred;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Item;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "Item"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v1

    const-string v2, "Target"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Lcom/idm/core/syncml/Location;)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "Source"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Lcom/idm/core/syncml/Location;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "Data"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/idm/core/syncml/Item;->isMoreData()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MoreData"

    invoke-direct {p0, p1, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Meta;)I
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "Meta"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    const-string v1, "Format"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns=\"syncml:metinf\""

    invoke-direct {p0, v1, v3, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Type"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Size"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "NextNonce"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getNextNonce()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "MaxMsgSize"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxMsgSize()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "MaxObjSize"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Meta;->getMaxObjSize()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v3, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Replace;)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Replace"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    const-string v1, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Results;)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Results"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    const-string v1, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "MsgRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "CmdRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "TargetRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "SourceRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/Status;)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Status"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    const-string v1, "CmdID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Command;->getCmdID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "MsgRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getMsgRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "CmdRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getCmdRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Cmd"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "TargetRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getTargetRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "SourceRef"

    invoke-virtual {p1}, Lcom/idm/core/syncml/ResponseCommand;->getSourceRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getChal()Lcom/idm/core/syncml/Chal;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Chal;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Data"

    invoke-virtual {p1}, Lcom/idm/core/syncml/Status;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Item;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/SyncBody;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "SyncBody"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->isFinalMsg()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Final"

    invoke-direct {p0, v2, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    :cond_0
    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Command;

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getCommandXMLSize(Lcom/idm/core/syncml/Command;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/SyncHdr;)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "SyncHdr"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    const-string v1, "VerDTD"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerDTD()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "VerProto"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getVerProto()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "SessionID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "MsgID"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Target"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getTarget()Lcom/idm/core/syncml/Target;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Lcom/idm/core/syncml/Location;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Source"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getSource()Lcom/idm/core/syncml/Source;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Lcom/idm/core/syncml/Location;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "RespURI"

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getRespURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getCred()Lcom/idm/core/syncml/Cred;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Cred;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncHdr;->getMeta()Lcom/idm/core/syncml/Meta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/Meta;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getXMLSize(Lcom/idm/core/syncml/SyncML;)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "SyncML"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/SyncHdr;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/SyncBody;)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getXMLSize(Ljava/lang/String;Lcom/idm/core/syncml/Location;)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result p1

    const-string v0, "LocName"

    invoke-virtual {p2}, Lcom/idm/core/syncml/Location;->getLocName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v0

    const-string v0, "LocURI"

    invoke-virtual {p2}, Lcom/idm/core/syncml/Location;->getLocURI()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getXMLSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getXMLSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLTagSize(Ljava/lang/String;Z)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p0

    add-int/2addr p1, v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getXMLTagSize(Ljava/lang/String;Z)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getSyncmlCommandSize(Lcom/idm/core/syncml/Command;)I
    .locals 2

    const-string v0, "application/vnd.syncml.dm+xml"

    iget-object v1, p0, Lcom/idm/core/syncml/SyncmlCalculator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getCommandXMLSize(Lcom/idm/core/syncml/Command;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string v0, "application/vnd.syncml.dm+wbxml"

    iget-object v1, p0, Lcom/idm/core/syncml/SyncmlCalculator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getCommandWBXMLSize(Lcom/idm/core/syncml/Command;)I

    move-result p0

    goto :goto_0

    :cond_1
    const-string p0, "mimeType is not support"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSyncmlSize(Lcom/idm/core/syncml/SyncML;)I
    .locals 2

    const-string v0, "application/vnd.syncml.dm+xml"

    iget-object v1, p0, Lcom/idm/core/syncml/SyncmlCalculator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getXMLSize(Lcom/idm/core/syncml/SyncML;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string v0, "application/vnd.syncml.dm+wbxml"

    iget-object v1, p0, Lcom/idm/core/syncml/SyncmlCalculator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/idm/core/syncml/SyncmlCalculator;->getWBXMLSize(Lcom/idm/core/syncml/SyncML;)I

    move-result p0

    goto :goto_0

    :cond_1
    const-string p0, "mimeType is not support"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
