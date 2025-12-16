.class public Lcom/idm/fotaagent/utils/LibraryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelABDownloadingAndInstalling()V
    .locals 0

    return-void
.end method

.method public cancelRunningTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/idm/service/provider/IDMProviderService;->idmSendMessageCancelTask(Lcom/idm/service/actioninfo/IDMActionInfo;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/LibraryUtils;->cancelABDownloadingAndInstalling()V

    return-void
.end method

.method public isTaskRunning(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/idm/service/provider/IDMProviderService;->idmIsExistTaskThread(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/LibraryUtils;->isUpdateEngineRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUpdateEngineRunning()Z
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
