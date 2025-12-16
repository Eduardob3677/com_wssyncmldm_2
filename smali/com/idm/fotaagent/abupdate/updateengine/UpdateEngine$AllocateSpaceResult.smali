.class public final Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocateSpaceResult"
.end annotation


# instance fields
.field private mErrorCode:I

.field private mFreeSpaceRequired:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;)J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-wide v0
.end method

.method public static synthetic access$102(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;J)J
    .locals 0

    iput-wide p1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-wide p1
.end method

.method public static synthetic access$202(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;I)I
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    return p1
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    return p0
.end method

.method public getFreeSpaceRequired()J
    .locals 3

    iget v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-wide v0

    :cond_1
    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;

    iget v1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getFreeSpaceRequired() is not available when error code is %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    invoke-direct {v0, v1, p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/exception/insufficientmemory/AllocateFailedException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
