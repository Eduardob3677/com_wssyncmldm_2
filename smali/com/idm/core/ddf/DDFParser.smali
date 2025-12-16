.class public Lcom/idm/core/ddf/DDFParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NODE_NAME_NODE:Ljava/lang/String; = "Node"

.field private static final NODE_NAME_SERVERID:Ljava/lang/String; = "ServerID"

.field private static final PATH_DEVINFO:Ljava/lang/String; = "DevInfo"

.field private static final PATH_DMACC:Ljava/lang/String; = "DMAcc"

.field private static final PATH_NAME_CLIENT_AAUTHDATA:Ljava/lang/String; = "/client/AAuthData"

.field private static final PATH_NAME_CLIENT_AAUTHNAME:Ljava/lang/String; = "/client/AAuthName"

.field private static final PATH_NAME_CLIENT_AAUTHSECRET:Ljava/lang/String; = "/client/AAuthSecret"

.field private static final PATH_NAME_MANUFACTURER:Ljava/lang/String; = "Man"

.field private static final PATH_NAME_SERVER_AAUTHDATA:Ljava/lang/String; = "/server/AAuthData"

.field private static final PATH_NAME_SERVER_AAUTHSECRET:Ljava/lang/String; = "/server/AAuthSecret"


# instance fields
.field private final DDFProfileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/idm/core/ddf/DDFProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

.field private final inputStream:Ljava/io/InputStream;

.field private final nodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/idm/core/ddf/DDFNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/core/ddf/DDFParser;->nodeList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/core/ddf/DDFParser;->DDFProfileInfoList:Ljava/util/List;

    iput-object p2, p0, Lcom/idm/core/ddf/DDFParser;->inputStream:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/idm/core/ddf/DDFParser;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/idm/core/ddf/DDFParser;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    return-void
.end method

.method private findRootNode(Lorg/xmlpull/v1/XmlPullParser;)Lcom/idm/core/ddf/DDFNode;
    .locals 4

    new-instance p0, Lcom/idm/core/ddf/DDFNode;

    const-string v0, "."

    invoke-direct {p0, v0}, Lcom/idm/core/ddf/DDFNode;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Node"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/core/ddf/DDFTagType;->of(Ljava/lang/String;)Lcom/idm/core/ddf/DDFTagType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/idm/core/ddf/DDFTagType;->toTag(Lorg/xmlpull/v1/XmlPullParser;)Lcom/idm/core/ddf/DDFTag;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/idm/core/ddf/DDFNode;->setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_3
    :goto_2
    return-object p0
.end method

.method private replaceAuths()V
    .locals 9

    iget-object v0, p0, Lcom/idm/core/ddf/DDFParser;->DDFProfileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/ddf/DDFProfileInfo;

    invoke-virtual {v1}, Lcom/idm/core/ddf/DDFProfileInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/idm/core/ddf/DDFParser;->nodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idm/core/ddf/DDFNode;

    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DMAcc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/client/AAuthData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/server/AAuthData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/client/AAuthName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/idm/core/ddf/DDFTagType;->VALUE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v5, Lcom/idm/core/ddf/DDFTag;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/ddf/DDFParser;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    iget-object v8, p0, Lcom/idm/core/ddf/DDFParser;->context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetClientName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/idm/core/ddf/DDFTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/idm/core/ddf/DDFNode;->setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/client/AAuthSecret"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/idm/core/ddf/DDFTagType;->VALUE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v5, Lcom/idm/core/ddf/DDFTag;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/ddf/DDFParser;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    iget-object v8, p0, Lcom/idm/core/ddf/DDFParser;->context:Landroid/content/Context;

    invoke-virtual {v7, v8, v1}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmMakeClientPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/idm/core/ddf/DDFTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/idm/core/ddf/DDFNode;->setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/server/AAuthSecret"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/idm/core/ddf/DDFTagType;->VALUE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v5, Lcom/idm/core/ddf/DDFTag;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/ddf/DDFParser;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    iget-object v8, p0, Lcom/idm/core/ddf/DDFParser;->context:Landroid/content/Context;

    invoke-virtual {v7, v8, v1}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmMakeServerPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/idm/core/ddf/DDFTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/idm/core/ddf/DDFNode;->setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V

    goto/16 :goto_0

    :cond_8
    :goto_1
    sget-object v4, Lcom/idm/core/ddf/DDFTagType;->VALUE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v5, Lcom/idm/core/ddf/DDFTag;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/idm/core/ddf/DDFParser;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    invoke-virtual {v7}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmMakeFactoryNonce()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/idm/core/ddf/DDFTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/idm/core/ddf/DDFNode;->setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private replaceDefaultValueIfEmpty()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/ddf/DDFParser;->replaceDevInfoManufacturer()V

    invoke-direct {p0}, Lcom/idm/core/ddf/DDFParser;->replaceAuths()V

    return-void
.end method

.method private replaceDevInfoManufacturer()V
    .locals 4

    iget-object v0, p0, Lcom/idm/core/ddf/DDFParser;->nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/ddf/DDFNode;

    invoke-virtual {v1}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Man"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/idm/core/ddf/DDFTagType;->VALUE:Lcom/idm/core/ddf/DDFTagType;

    new-instance v2, Lcom/idm/core/ddf/DDFTag;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/idm/core/ddf/DDFParser;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    invoke-virtual {p0}, Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;->idmGetDeviceManufacturer()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/idm/core/ddf/DDFTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/idm/core/ddf/DDFNode;->setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public execute()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/core/ddf/DDFNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/idm/core/ddf/DDFParser;->inputStream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-direct {p0, v1}, Lcom/idm/core/ddf/DDFParser;->findRootNode(Lorg/xmlpull/v1/XmlPullParser;)Lcom/idm/core/ddf/DDFNode;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/core/ddf/DDFParser;->nodeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    const-string v5, "Node"

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/core/ddf/DDFNode;

    invoke-virtual {v2}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/idm/core/ddf/DDFNode;

    invoke-direct {v3, v2}, Lcom/idm/core/ddf/DDFNode;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idm/core/ddf/DDFParser;->nodeList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/core/ddf/DDFTagType;->of(Ljava/lang/String;)Lcom/idm/core/ddf/DDFTagType;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/idm/core/ddf/DDFTagType;->toTag(Lorg/xmlpull/v1/XmlPullParser;)Lcom/idm/core/ddf/DDFTag;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/idm/core/ddf/DDFNode;->setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V

    sget-object v4, Lcom/idm/core/ddf/DDFTagType;->VALUE:Lcom/idm/core/ddf/DDFTagType;

    if-ne v3, v4, :cond_3

    const-string v3, "ServerID"

    invoke-virtual {v2}, Lcom/idm/core/ddf/DDFNode;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/idm/core/ddf/DDFParser;->DDFProfileInfoList:Ljava/util/List;

    new-instance v4, Lcom/idm/core/ddf/DDFProfileInfo;

    invoke-virtual {v2}, Lcom/idm/core/ddf/DDFNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/idm/core/ddf/DDFProfileInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_2
    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    invoke-direct {p0}, Lcom/idm/core/ddf/DDFParser;->replaceDefaultValueIfEmpty()V

    iget-object p0, p0, Lcom/idm/core/ddf/DDFParser;->nodeList:Ljava/util/List;

    return-object p0
.end method

.method public getProfileInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/core/ddf/DDFProfileInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/core/ddf/DDFParser;->DDFProfileInfoList:Ljava/util/List;

    return-object p0
.end method
