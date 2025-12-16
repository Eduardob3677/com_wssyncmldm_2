.class Lcom/idm/core/dd/IDMDDXmlHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/dd/IDMDDConstants;


# instance fields
.field private final ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

.field private extraElementTag:Ljava/lang/String;

.field private extraElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDDVersion:Z

.field private isDescription:Z

.field private isExtraElement:Z

.field private isIconUri:Z

.field private isInfoUrl:Z

.field private isInstallParam:Z

.field private isName:Z

.field private isNextUrl:Z

.field private isNotifyUri:Z

.field private isObjectUri:Z

.field private isSize:Z

.field private isType:Z

.field private isVendor:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDDVersion:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isName:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isType:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDescription:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isObjectUri:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isSize:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNotifyUri:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInstallParam:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isVendor:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNextUrl:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInfoUrl:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isIconUri:Z

    iput-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isExtraElement:Z

    new-instance v0, Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-direct {v0}, Lcom/idm/core/dd/IDMDDXmlDataSet;-><init>()V

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->extraElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->extraElements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetExtraElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public endTag(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DDVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDDVersion:Z

    goto/16 :goto_0

    :cond_0
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isName:Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isType:Z

    goto/16 :goto_0

    :cond_2
    const-string v0, "description"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDescription:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "objectURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isObjectUri:Z

    goto :goto_0

    :cond_4
    const-string v0, "size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isSize:Z

    goto :goto_0

    :cond_5
    const-string v0, "installNotifyURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNotifyUri:Z

    goto :goto_0

    :cond_6
    const-string v0, "installParam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInstallParam:Z

    goto :goto_0

    :cond_7
    const-string v0, "vendor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isVendor:Z

    goto :goto_0

    :cond_8
    const-string v0, "nextURL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNextUrl:Z

    goto :goto_0

    :cond_9
    const-string v0, "infoURL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInfoUrl:Z

    goto :goto_0

    :cond_a
    const-string v0, "iconURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isIconUri:Z

    goto :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isExtraElement:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->extraElements:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->extraElementTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isExtraElement:Z

    :cond_c
    :goto_0
    return-void
.end method

.method public idmDDXmlGetParsedData()Lcom/idm/core/dd/IDMDDXmlDataSet;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    return-object p0
.end method

.method public startTag(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DDVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDDVersion:Z

    goto/16 :goto_0

    :cond_0
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isName:Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isType:Z

    goto/16 :goto_0

    :cond_2
    const-string v0, "description"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDescription:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "objectURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isObjectUri:Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isSize:Z

    goto :goto_0

    :cond_5
    const-string v0, "installNotifyURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNotifyUri:Z

    goto :goto_0

    :cond_6
    const-string v0, "installParam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInstallParam:Z

    goto :goto_0

    :cond_7
    const-string v0, "vendor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isVendor:Z

    goto :goto_0

    :cond_8
    const-string v0, "nextURL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNextUrl:Z

    goto :goto_0

    :cond_9
    const-string v0, "infoURL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInfoUrl:Z

    goto :goto_0

    :cond_a
    const-string v0, "iconURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isIconUri:Z

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->extraElements:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iput-boolean v1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isExtraElement:Z

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->extraElementTag:Ljava/lang/String;

    :cond_d
    :goto_0
    return-void
.end method

.method public text(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDDVersion:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetDDVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isName:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isType:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isDescription:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isObjectUri:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetObjectURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isSize:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetSize(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNotifyUri:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetInstallNotifyURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInstallParam:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetInstallParam(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isVendor:Z

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetVendor(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isNextUrl:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetNextURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isInfoUrl:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetInfoURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isIconUri:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetIconURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->isExtraElement:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->ddXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlHandler;->extraElementTag:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/idm/core/dd/IDMDDXmlDataSet;->idmDDXmlDataSetExtraElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_0
    return-void
.end method
