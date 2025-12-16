.class public Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;
.super Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException;
.source "SourceFile"


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getErrorCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;->errorCode:I

    return p0
.end method
