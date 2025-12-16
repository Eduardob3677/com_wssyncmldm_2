.class public Lcom/idm/fotaagent/enabler/ui/downloadprogress/ProgressBarContentViewModel;
.super Landroidx/lifecycle/Y;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/Y;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedPercent(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130021

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedRemainingTime()Landroidx/lifecycle/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->getFormattedRemainingTime()Landroidx/lifecycle/F;

    move-result-object p0

    return-object p0
.end method

.method public getPercent()Landroidx/lifecycle/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->getPercentLiveData()Landroidx/lifecycle/F;

    move-result-object p0

    return-object p0
.end method
