.class public Lcom/idm/network/IDMNetworkHttpHeaderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private connectionType:Ljava/lang/String;

.field private contentLength:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private macData:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->responseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->contentLength:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->macData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public idmGetConnectionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->connectionType:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetContentLength()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->contentLength:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetMacData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->macData:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetResponseCode()I
    .locals 0

    iget p0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->responseCode:I

    return p0
.end method

.method public idmSetConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->connectionType:Ljava/lang/String;

    return-void
.end method

.method public idmSetContentLength(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->contentLength:Ljava/lang/String;

    return-void
.end method

.method public idmSetContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->contentType:Ljava/lang/String;

    return-void
.end method

.method public idmSetMacData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->macData:Ljava/lang/String;

    return-void
.end method

.method public idmSetResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->responseCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMHttpHeaderInfo{contentType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', macData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/network/IDMNetworkHttpHeaderInfo;->macData:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
