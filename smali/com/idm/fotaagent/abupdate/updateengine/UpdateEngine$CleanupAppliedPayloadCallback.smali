.class Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;
.super Landroid/os/IUpdateEngineCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanupAppliedPayloadCallback"
.end annotation


# instance fields
.field private mCompleted:Z

.field private mErrorCode:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;)I
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->getResult()I

    move-result p0

    return p0
.end method

.method private getResult()I
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStatusUpdate(IF)V
    .locals 0

    return-void
.end method
