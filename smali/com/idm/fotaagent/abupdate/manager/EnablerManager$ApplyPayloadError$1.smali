.class final enum Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError$1;
.super Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager$ApplyPayloadError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/abupdate/manager/EnablerManager$1;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_TRANSFER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->executeCallbackIfPossible(Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    sget-object p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->getStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->setUpdateStatus(I)V

    return-void
.end method
