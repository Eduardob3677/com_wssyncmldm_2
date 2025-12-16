.class public Lcom/idm/core/dd/IDMDDXmlDataSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private DDVersion:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private extraElement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iconURI:Ljava/lang/String;

.field private infoURL:Ljava/lang/String;

.field private installNotifyURI:Ljava/lang/String;

.field private installParam:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nextURL:Ljava/lang/String;

.field private objectURI:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->size:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->DDVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->objectURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->vendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installNotifyURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->nextURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->infoURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->iconURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installParam:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->extraElement:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public idmDDXmlDataGetDDVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->DDVersion:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetExtraElement()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->extraElement:Ljava/util/Map;

    return-object p0
.end method

.method public idmDDXmlDataGetIconURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->iconURI:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetInfoURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->infoURL:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetInstallNotifyURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installNotifyURI:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetInstallParam()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installParam:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->name:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetNextURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->nextURL:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetObjectURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->objectURI:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->size:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->type:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataGetVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->vendor:Ljava/lang/String;

    return-object p0
.end method

.method public idmDDXmlDataSetDDVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->DDVersion:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->description:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetExtraElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->extraElement:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public idmDDXmlDataSetIconURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->iconURI:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetInfoURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->infoURL:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetInstallNotifyURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installNotifyURI:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetInstallParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installParam:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->name:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetNextURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->nextURL:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetObjectURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->objectURI:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->size:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->type:Ljava/lang/String;

    return-void
.end method

.method public idmDDXmlDataSetVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->vendor:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMDDXmlDataSet [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DDVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->DDVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->objectURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installNotifyURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installNotifyURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->nextURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", infoURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->infoURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->iconURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", installParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->installParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->extraElement:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/idm/core/dd/IDMDDXmlDataSet;->extraElement:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
