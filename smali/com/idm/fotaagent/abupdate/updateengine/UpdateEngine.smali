.class public Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$ErrorCodeConstants;,
        Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;,
        Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;,
        Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$ErrorCode;
    }
.end annotation


# static fields
.field private static final GETSERVICE_METHOD_NAME:Ljava/lang/String; = "getService"

.field private static final SERVICE_MANAGER_CLASS_NAME:Ljava/lang/String; = "android.os.ServiceManager"

.field private static final UPDATE_ENGINE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineService"


# instance fields
.field private mUpdateEngine:Landroid/os/IUpdateEngine;

.field private mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

.field private final mUpdateEngineCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.os.UpdateEngineService"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.os.ServiceManager"

    const-string v3, "getService"

    invoke-static {v2, v3, v0, v1}, Lcom/idm/fotaagent/utils/GeneralUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IBinder(updateEngineService : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/IUpdateEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    :cond_0
    return-void
.end method

.method private resume()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0}, Landroid/os/IUpdateEngine;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private suspend()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0}, Landroid/os/IUpdateEngine;->suspend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allocateSpace(Ljava/lang/String;[Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;-><init>(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;)V

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0, p1, p2}, Landroid/os/IUpdateEngine;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->access$102(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;J)J

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->access$100(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;)J

    move-result-wide p0

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3c

    :goto_0
    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->access$202(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;I)I
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v0, p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->access$202(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;I)I

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;->access$102(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$AllocateSpaceResult;J)J

    return-object v0
.end method

.method public applyPayload(Landroid/content/res/AssetFileDescriptor;[Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V

    return-void
.end method

.method public bind(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->bind(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public bind(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;Landroid/os/Handler;)Z
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;-><init>(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;Landroid/os/Handler;Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;)V

    iput-object v1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0, v1}, Landroid/os/IUpdateEngine;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0}, Landroid/os/IUpdateEngine;->cancel()V

    return-void
.end method

.method public cleanupAppliedPayload()I
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;-><init>(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;)V

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0, v0}, Landroid/os/IUpdateEngine;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    invoke-static {v0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;->access$400(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$CleanupAppliedPayloadCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public resetShouldSwitchSlotOnReboot()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0}, Landroid/os/IUpdateEngine;->resetShouldSwitchSlotOnReboot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public resetStatus()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0}, Landroid/os/IUpdateEngine;->resetStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0, p1}, Landroid/os/IUpdateEngine;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    return-void
.end method

.method public unbind()Z
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v2, v1}, Landroid/os/IUpdateEngine;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public verifyPayloadMetadata(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {p0, p1}, Landroid/os/IUpdateEngine;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
