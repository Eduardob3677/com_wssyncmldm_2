.class Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nWbxmlDataSize:I

.field private nXMLDataSize:I

.field private pWbxmlData:Ljava/lang/String;

.field private pXMLData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->nWbxmlDataSize:I

    const-string v1, ""

    iput-object v1, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->pWbxmlData:Ljava/lang/String;

    iput v0, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->nXMLDataSize:I

    iput-object v1, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->pXMLData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public idmTndsGetWbxmlData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->pWbxmlData:Ljava/lang/String;

    return-object p0
.end method

.method public idmTndsGetWbxmlDataSize()I
    .locals 0

    iget p0, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->nWbxmlDataSize:I

    return p0
.end method

.method public idmTndsGetXMLData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->pXMLData:Ljava/lang/String;

    return-object p0
.end method

.method public idmTndsGetXMLDataSize()I
    .locals 0

    iget p0, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->nXMLDataSize:I

    return p0
.end method

.method public idmTndsSetWbxmlData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->pWbxmlData:Ljava/lang/String;

    return-void
.end method

.method public idmTndsSetWbxmlDataSize(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->nWbxmlDataSize:I

    return-void
.end method

.method public idmTndsSetXMLData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->pXMLData:Ljava/lang/String;

    return-void
.end method

.method public idmTndsSetXMLDataSize(I)V
    .locals 0

    iput p1, p0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlData;->nXMLDataSize:I

    return-void
.end method
