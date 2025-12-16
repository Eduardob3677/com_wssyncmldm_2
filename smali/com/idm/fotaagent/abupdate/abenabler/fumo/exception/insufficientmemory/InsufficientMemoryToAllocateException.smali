.class public Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/InsufficientMemoryToAllocateException;
.super Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException;
.source "SourceFile"


# instance fields
.field private final requiredBytes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/InsufficientMemoryToAllocateException;->requiredBytes:J

    return-void
.end method


# virtual methods
.method public getRequiredBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/InsufficientMemoryToAllocateException;->requiredBytes:J

    return-wide v0
.end method
