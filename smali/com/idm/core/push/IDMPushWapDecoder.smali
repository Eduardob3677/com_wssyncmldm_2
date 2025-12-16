.class public Lcom/idm/core/push/IDMPushWapDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/push/IDMPushInterface;


# instance fields
.field private notiData:[B

.field private pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    new-instance p1, Lcom/idm/core/push/IDMPushWapInfo;

    invoke-direct {p1}, Lcom/idm/core/push/IDMPushWapInfo;-><init>()V

    iput-object p1, p0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    return-void
.end method


# virtual methods
.method public idmPushWapDecodeWSPHeader()Lcom/idm/core/push/IDMPushWapInfo;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    array-length v2, v1

    if-eqz v2, :cond_18

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x6

    if-ne v1, v4, :cond_17

    const-string v1, "create new wssWappush object"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    iget-object v4, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    invoke-virtual {v1, v4}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetHeaderLen(I)V

    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    const/4 v4, 0x3

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    aget-byte v1, v1, v6

    and-int/lit16 v7, v1, 0xff

    const/16 v8, 0x20

    const/16 v9, 0x35

    const/16 v10, 0x36

    const/16 v11, 0x42

    const/16 v12, 0x44

    const-string v13, "Not Support Content Type"

    const/16 v14, 0x80

    const/4 v15, 0x0

    if-lt v7, v8, :cond_7

    and-int/lit16 v1, v1, 0xff

    if-ge v1, v14, :cond_7

    move v1, v6

    move v7, v15

    :goto_1
    iget-object v8, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v8, v8, v1

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v7, v7, [B

    move v8, v15

    :goto_2
    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v5, v5, v6

    if-eqz v5, :cond_2

    aput-byte v5, v7, v8

    add-int/2addr v8, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v7, "application/vnd.syncml.notification"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x3

    goto :goto_3

    :sswitch_1
    const-string v7, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x2

    goto :goto_3

    :sswitch_2
    const-string v7, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    goto :goto_3

    :sswitch_3
    const-string v7, "application/vnd.wap.connectivity-xml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    packed-switch v6, :pswitch_data_0

    new-instance v0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    invoke-direct {v0, v13}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v5, v12}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    goto :goto_4

    :pswitch_1
    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v5, v11}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    goto :goto_4

    :pswitch_2
    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v5, v10}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    goto :goto_4

    :pswitch_3
    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v5, v9}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    :goto_4
    add-int/2addr v1, v3

    goto/16 :goto_6

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " Content Value ["

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], Mask Value ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x7f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v1, v1, v6

    and-int/lit8 v5, v1, 0x7f

    if-ne v5, v10, :cond_8

    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    and-int/lit8 v1, v1, 0x7f

    invoke-virtual {v5, v1}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    const-string v1, "Content Type: SML_MIME_TYPE_CODE_WAP_CONNECTIVITY_WBXML"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    and-int/lit8 v5, v1, 0x7f

    if-ne v5, v9, :cond_9

    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    and-int/lit8 v1, v1, 0x7f

    invoke-virtual {v5, v1}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    const-string v1, "Content Type: SML_MIME_TYPE_CODE_WAP_CONNECTIVITY_XML"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    and-int/lit8 v5, v1, 0x7f

    if-ne v5, v12, :cond_a

    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    and-int/lit8 v1, v1, 0x7f

    invoke-virtual {v5, v1}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    const-string v1, "Content Type: SML_MIME_TYPE_CODE_SYNCML_DM_NOTI"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    and-int/lit8 v5, v1, 0x7f

    if-ne v5, v11, :cond_16

    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    and-int/lit8 v1, v1, 0x7f

    invoke-virtual {v5, v1}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetContentType(I)V

    const-string v1, "Content Type: SML_MIME_TYPE_CODE_SYNCML_DM_WBXML"

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v1, v6, 0x1

    :goto_6
    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v6, v5, v1

    if-nez v6, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    new-array v6, v4, [B

    invoke-static {v5, v1, v6, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v6, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v7, v6, v1

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x91

    if-ne v7, v8, :cond_c

    add-int/lit8 v5, v1, 0x1

    iget-object v7, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v7, v5}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetSEC(I)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_c
    const-string v6, "SEC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    add-int/lit8 v5, v1, 0x4

    iget-object v6, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    iget-object v7, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v5, v7, v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v14

    invoke-virtual {v6, v5}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetSEC(I)V

    add-int/lit8 v1, v1, 0x5

    :cond_d
    :goto_7
    iget-object v5, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v6, v5, v1

    if-nez v6, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    new-array v6, v4, [B

    invoke-static {v5, v1, v6, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v6, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x92

    if-ne v6, v7, :cond_11

    add-int/2addr v1, v3

    move v5, v1

    move v6, v15

    :goto_8
    iget-object v7, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    if-eqz v5, :cond_f

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_8

    :cond_f
    new-array v5, v6, [B

    move v7, v15

    :goto_9
    iget-object v8, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v1, v8, v1

    if-eqz v1, :cond_10

    aput-byte v1, v5, v7

    add-int/2addr v7, v3

    move v1, v9

    goto :goto_9

    :cond_10
    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v1, v6}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetMACLen(I)V

    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v1, v5}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetMAC([B)V

    goto :goto_c

    :cond_11
    const-string v6, "MAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    add-int/lit8 v1, v1, 0x4

    move v5, v1

    move v6, v15

    :goto_a
    iget-object v7, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    if-eqz v5, :cond_12

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_a

    :cond_12
    new-array v5, v6, [B

    move v7, v15

    :goto_b
    iget-object v8, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v1, v8, v1

    if-eqz v1, :cond_13

    aput-byte v1, v5, v7

    add-int/2addr v7, v3

    move v1, v9

    goto :goto_b

    :cond_13
    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v1, v6}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetMACLen(I)V

    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v1, v5}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetMAC([B)V

    :cond_14
    :goto_c
    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    const/4 v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {v1}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapGetHeaderLen()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetBodyLen(I)V

    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v1}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapGetHeaderLen()I

    move-result v1

    add-int/2addr v1, v4

    iget-object v2, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v2}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapGetBodyLen()I

    move-result v2

    new-array v2, v2, [B

    :goto_d
    iget-object v3, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v3}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapGetBodyLen()I

    move-result v3

    if-ge v15, v3, :cond_15

    iget-object v3, v0, Lcom/idm/core/push/IDMPushWapDecoder;->notiData:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    aput-byte v1, v2, v15

    add-int/lit8 v15, v15, 0x1

    move v1, v4

    goto :goto_d

    :cond_15
    iget-object v1, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    invoke-virtual {v1, v2}, Lcom/idm/core/push/IDMPushWapInfo;->idmPushWapSetNotiBody([B)V

    iget-object v0, v0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    return-object v0

    :cond_16
    new-instance v0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    invoke-direct {v0, v13}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string v2, "Not Support PDU Type="

    invoke-static {v1, v2}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/idm/exception/push/IDMExceptionPushProcessFail;

    const-string v1, "noti Data is NULL"

    invoke-direct {v0, v1}, Lcom/idm/exception/push/IDMExceptionPushProcessFail;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x57e91316 -> :sswitch_3
        -0x2038281 -> :sswitch_2
        0x7be0635d -> :sswitch_1
        0x7c948cde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public idmPushWapGetPushWapInfo()Lcom/idm/core/push/IDMPushWapInfo;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/push/IDMPushWapDecoder;->pushWapInfo:Lcom/idm/core/push/IDMPushWapInfo;

    return-object p0
.end method
