.class public Lcom/idm/core/push/IDMPushParserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/push/IDMPushInterface;


# instance fields
.field private bNonceResync:Z

.field private context:Landroid/content/Context;

.field private pushType:I

.field private rawData:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/idm/core/push/IDMPushParserImpl;->rawData:[B

    iput p3, p0, Lcom/idm/core/push/IDMPushParserImpl;->pushType:I

    iput-object p1, p0, Lcom/idm/core/push/IDMPushParserImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/idm/core/push/IDMPushParserImpl;->rawData:[B

    iput p3, p0, Lcom/idm/core/push/IDMPushParserImpl;->pushType:I

    iput-object p1, p0, Lcom/idm/core/push/IDMPushParserImpl;->context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/idm/core/push/IDMPushParserImpl;->bNonceResync:Z

    return-void
.end method


# virtual methods
.method public idmPushParserDecoder()Lcom/idm/core/push/IDMPushInfo;
    .locals 4

    iget v0, p0, Lcom/idm/core/push/IDMPushParserImpl;->pushType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/idm/core/push/IDMPushDecoder;

    iget-object v2, p0, Lcom/idm/core/push/IDMPushParserImpl;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/idm/core/push/IDMPushParserImpl;->rawData:[B

    iget-boolean p0, p0, Lcom/idm/core/push/IDMPushParserImpl;->bNonceResync:Z

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/idm/core/push/IDMPushDecoder;-><init>(Landroid/content/Context;[BIZ)V

    invoke-virtual {v1}, Lcom/idm/core/push/IDMPushDecoder;->idmPushDecodePushInfo()Lcom/idm/core/push/IDMPushInfo;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/idm/core/push/IDMPushWapDecoder;

    iget-object v1, p0, Lcom/idm/core/push/IDMPushParserImpl;->rawData:[B

    invoke-direct {v0, v1}, Lcom/idm/core/push/IDMPushWapDecoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/idm/core/push/IDMPushWapDecoder;->idmPushWapDecodeWSPHeader()Lcom/idm/core/push/IDMPushWapInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapGetContentType()I

    move-result v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/idm/core/push/IDMPushDecoder;

    iget-object v2, p0, Lcom/idm/core/push/IDMPushParserImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapGetNotiBody()[B

    move-result-object v0

    iget v3, p0, Lcom/idm/core/push/IDMPushParserImpl;->pushType:I

    iget-boolean p0, p0, Lcom/idm/core/push/IDMPushParserImpl;->bNonceResync:Z

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/idm/core/push/IDMPushDecoder;-><init>(Landroid/content/Context;[BIZ)V

    invoke-virtual {v1}, Lcom/idm/core/push/IDMPushDecoder;->idmPushDecodePushInfo()Lcom/idm/core/push/IDMPushInfo;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string v0, "WapInfo Is Null"

    invoke-direct {p0, v0}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public idmPushWapHeaderDecoder()Lcom/idm/core/push/IDMPushWapInfo;
    .locals 1

    new-instance v0, Lcom/idm/core/push/IDMPushWapDecoder;

    iget-object p0, p0, Lcom/idm/core/push/IDMPushParserImpl;->rawData:[B

    invoke-direct {v0, p0}, Lcom/idm/core/push/IDMPushWapDecoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/idm/core/push/IDMPushWapDecoder;->idmPushWapDecodeWSPHeader()Lcom/idm/core/push/IDMPushWapInfo;

    move-result-object p0

    return-object p0
.end method
