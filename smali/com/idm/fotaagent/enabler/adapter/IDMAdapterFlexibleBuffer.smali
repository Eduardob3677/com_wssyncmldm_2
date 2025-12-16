.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private RealwriteBuffer:[B

.field private flexbleBuffer:[B

.field private nAppendBufferSize:I

.field private nFlexbleBufferLen:I

.field private nRealWriteBufferLen:I

.field private nReceiveBufferSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nAppendBufferSize:I

    iput p2, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nReceiveBufferSize:I

    return-void
.end method

.method private idmAddFlexibleBufferLength(I)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    return-void
.end method

.method private idmAddRealWriteBuffer()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->RealwriteBuffer:[B

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmSetRealWriteBufferLength(I)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->flexbleBuffer:[B

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->RealwriteBuffer:[B

    iget p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public idmAddFlexibleBuffer([BI)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->flexbleBuffer:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nAppendBufferSize:I

    iget v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nReceiveBufferSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->flexbleBuffer:[B

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->flexbleBuffer:[B

    iget v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmAddFlexibleBufferLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public idmAllClearBufferInfo()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->flexbleBuffer:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->RealwriteBuffer:[B

    iput v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nRealWriteBufferLen:I

    return-void
.end method

.method public idmClearFlexibleBuffer()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->flexbleBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    return-void
.end method

.method public idmGetAppendSavedBufferSize()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nAppendBufferSize:I

    return p0
.end method

.method public idmGetFlexibleBuffer()[B
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->flexbleBuffer:[B

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public idmGetFlexibleBufferLength()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nFlexbleBufferLen:I

    return p0
.end method

.method public idmGetRealWriteBuffer()[B
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->idmAddRealWriteBuffer()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->RealwriteBuffer:[B

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public idmGetRealWriteBufferLength()I
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nRealWriteBufferLen:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nRealWriteBufferLen:I

    return v0
.end method

.method public idmSetRealWriteBufferLength(I)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nRealWriteBufferLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterFlexibleBuffer;->nRealWriteBufferLen:I

    return-void
.end method
