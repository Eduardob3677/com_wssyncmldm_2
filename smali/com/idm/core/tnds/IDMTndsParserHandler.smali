.class Lcom/idm/core/tnds/IDMTndsParserHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/tnds/IDMTndsConstants;


# instance fields
.field private bAcl:Z

.field private bDDFName:Z

.field private bMIME:Z

.field private bNodeName:Z

.field private bValue:Z

.field private bVerDTD:Z

.field private mgmtTree:Lcom/idm/core/tnds/IDMTndsMgmtTree;

.field private nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

.field private parentPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bVerDTD:Z

    iput-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bNodeName:Z

    iput-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bValue:Z

    iput-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bMIME:Z

    iput-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bDDFName:Z

    iput-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bAcl:Z

    new-instance v0, Lcom/idm/core/tnds/IDMTndsMgmtTree;

    invoke-direct {v0}, Lcom/idm/core/tnds/IDMTndsMgmtTree;-><init>()V

    iput-object v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->mgmtTree:Lcom/idm/core/tnds/IDMTndsMgmtTree;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "."

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private idmTndsDeleteLastPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public endTag(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MgmtTree"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TNDS_TAG_MGMTTREE"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "VerDTD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bVerDTD:Z

    goto :goto_0

    :cond_1
    const-string v0, "Node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/idm/core/tnds/IDMTndsParserHandler;->idmTndsDeleteLastPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "NodeName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bNodeName:Z

    goto :goto_0

    :cond_3
    const-string v0, "Value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bValue:Z

    goto :goto_0

    :cond_4
    const-string v0, "ACL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bAcl:Z

    goto :goto_0

    :cond_5
    const-string v0, "MIME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bMIME:Z

    goto :goto_0

    :cond_6
    const-string v0, "DDFName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bDDFName:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public idmTndsGetMgmtTree()Lcom/idm/core/tnds/IDMTndsMgmtTree;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->mgmtTree:Lcom/idm/core/tnds/IDMTndsMgmtTree;

    return-object p0
.end method

.method public startTag(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MgmtTree"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TNDS_TAG_MGMTTREE"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "VerDTD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bVerDTD:Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "Node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/idm/core/tnds/IDMTndsNodeInfo;

    invoke-direct {p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;-><init>()V

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    iget-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->mgmtTree:Lcom/idm/core/tnds/IDMTndsMgmtTree;

    invoke-virtual {p1}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsGetNodeList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string v0, "NodeName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bNodeName:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "Value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bValue:Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "ACL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bAcl:Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "MIME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bMIME:Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "DDFName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bDDFName:Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "b64"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "bool"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "chr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string v0, "node"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string v0, "date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_10
    const-string v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    const-string v0, "float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetFormat(Ljava/lang/String;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public text(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    iget-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bVerDTD:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->mgmtTree:Lcom/idm/core/tnds/IDMTndsMgmtTree;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsMgmtTree;->idmTndsSetVerDTD(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bNodeName:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    iget-object v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetDepth(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bValue:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bAcl:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeGetAcl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetAcl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bMIME:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->bDDFName:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsParserHandler;->nodeInfo:Lcom/idm/core/tnds/IDMTndsNodeInfo;

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/tnds/IDMTndsNodeInfo;->idmTndsNodeSetType(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
