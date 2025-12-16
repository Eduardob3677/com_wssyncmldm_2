.class public Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATTED_REMAINING_TIME:Ljava/lang/String; = "--:--:--"

.field private static final formattedRemainingTime:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field private static final percent:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field private static final remainingTimeEstimator:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;-><init>(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$1;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->remainingTimeEstimator:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;

    new-instance v0, Landroidx/lifecycle/F;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/C;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->formattedRemainingTime:Landroidx/lifecycle/F;

    new-instance v0, Landroidx/lifecycle/F;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/C;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->percent:Landroidx/lifecycle/F;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormattedRemainingTime()Landroidx/lifecycle/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/F;"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->formattedRemainingTime:Landroidx/lifecycle/F;

    return-object v0
.end method

.method public static getPercent()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->percent:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getPercentLiveData()Landroidx/lifecycle/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/F;"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->percent:Landroidx/lifecycle/F;

    return-object v0
.end method

.method public static reset()V
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->formattedRemainingTime:Landroidx/lifecycle/F;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/F;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->percent:Landroidx/lifecycle/F;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/F;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public static setFormattedRemainTime(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/utils/Formatted$RemainingTime;

    invoke-direct {v0, p0, p1}, Lcom/idm/fotaagent/utils/Formatted$RemainingTime;-><init>(J)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/Formatted$RemainingTime;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "--:--:--"

    :goto_0
    sget-object p1, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->formattedRemainingTime:Landroidx/lifecycle/F;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/F;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public static setPercent(I)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->percent:Landroidx/lifecycle/F;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/F;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->remainingTimeEstimator:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->access$100(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;Ljava/lang/String;)V

    return-void
.end method

.method public static update(JILjava/lang/String;)V
    .locals 4

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const-wide/16 p0, 0x0

    move-wide v2, p0

    move p0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->remainingTimeEstimator:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;

    invoke-static {v0, p0, p1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->access$200(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;J)Z

    move-result p0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->access$300(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;)J

    move-result-wide v2

    :goto_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->getPercent()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr p0, v1

    if-eqz p0, :cond_2

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2, v3}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setRemainedDownloadTime(J)V

    invoke-static {v2, v3}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->setFormattedRemainTime(J)V

    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->setPercent(I)V

    invoke-static {p3}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->updateUI(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static updateUI(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->percent:Landroidx/lifecycle/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->formattedRemainingTime:Landroidx/lifecycle/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_DOWNLOAD_PROGRESS:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    return-void
.end method
