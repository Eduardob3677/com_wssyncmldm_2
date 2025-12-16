.class public Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;


# static fields
.field static final ADDITIONAL_DEPTH_IN_CALL_STACK:I = 0x2

.field private static final BUILD_DATE:Ljava/lang/String; = "ro.build.date"

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.fingerprint"

.field private static final BUILD_HOST:Ljava/lang/String; = "ro.build.host"


# instance fields
.field private final defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/fotaagent/common/log/Logger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->D(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->E(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->I(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->V(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->W(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public getBuildDate()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.date"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuildFingerprint()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.fingerprint"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuildHost()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.host"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public idmGetSecurityKey()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->getKey()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    invoke-virtual {p0, v0}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public idmSaveDevInfoLog(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->switchFileLoggerToSession(Landroid/content/Context;)V

    new-instance v0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const-string v2, "//////////////// Device information"

    invoke-virtual {v1, v2}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Release Version : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/idm/fotaagent/utils/DeviceUtils;->readAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Model : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CC : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceID :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Build FingerPrint : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Build Data : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->getBuildDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Build Host : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->getBuildHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Remain Space : /cache: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtCache()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "Kb /data: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/storage/FileManager;->getAvailableBytesAtData()J

    move-result-wide v0

    div-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    return-void
.end method

.method public idmSaveDeviceStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;->defaultLogger:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V

    return-void
.end method
