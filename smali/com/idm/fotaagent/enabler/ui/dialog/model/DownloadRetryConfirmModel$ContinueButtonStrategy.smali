.class Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel$ContinueButtonStrategy;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContinueButtonStrategy"
.end annotation


# instance fields
.field private final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f13000f

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel$ContinueButtonStrategy;->taskId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;->doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V

    new-instance p1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    iget-object p2, p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel$ContinueButtonStrategy;->taskId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xf2

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result v0

    if-ne p2, v0, :cond_0

    const-string p2, "change fumo status from DOWNLOAD_PAUSE to DOWNLOAD_IN_PROGRESS"

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->setFumoStatus(I)V

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/fotaagent/scheduler/jobschedule/NetworkResumeJobScheduleManager;->cancel(Landroid/content/Context;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadRetryConfirmModel$ContinueButtonStrategy;->taskId:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->fumoStartIfPossible()V

    return-void
.end method
