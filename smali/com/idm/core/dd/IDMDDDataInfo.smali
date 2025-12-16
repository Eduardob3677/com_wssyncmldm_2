.class public Lcom/idm/core/dd/IDMDDDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private IDMDDXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

.field private downloadDescriptorData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmGetDDXmlDataSet()Lcom/idm/core/dd/IDMDDXmlDataSet;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDDataInfo;->IDMDDXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    return-object p0
.end method

.method public idmGetDownloadDescriptorData()[B
    .locals 0

    iget-object p0, p0, Lcom/idm/core/dd/IDMDDDataInfo;->downloadDescriptorData:[B

    return-object p0
.end method

.method public idmSetDDXmlDataSet(Lcom/idm/core/dd/IDMDDXmlDataSet;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDDataInfo;->IDMDDXmlDataSet:Lcom/idm/core/dd/IDMDDXmlDataSet;

    return-void
.end method

.method public idmSetDownloadDescriptorData([B)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/dd/IDMDDDataInfo;->downloadDescriptorData:[B

    return-void
.end method
