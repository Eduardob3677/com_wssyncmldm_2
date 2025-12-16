.class Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemainingTimeEstimator"
.end annotation


# static fields
.field private static final DECAY_EXPONENT_RECIPROCAL:I = 0x6

.field private static final MIN_REMAINING_TIME_DELTA_IN_MS:J = 0x1f4L

.field private static final MIN_SAMPLING_INTERVAL_IN_MS:J = 0x64L

.field private static final ON_STARTED:J = -0x1L


# instance fields
.field private cumulativeDownloadSize:J

.field private downloadRate:J

.field private remainingTimeInMillis:J

.field private timestampInMillis:J

.field private totalSize:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->remainingTimeInMillis:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->start(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->estimate(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;)J
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->getRemainingTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private estimate(J)Z
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->timestampInMillis:J

    sub-long v4, v0, v2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-wide p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->cumulativeDownloadSize:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->downloadRate:J

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->timestampInMillis:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "start downloading at "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->timestampInMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " with cumulative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->cumulativeDownloadSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " Byte total: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->totalSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "Byte"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-wide v6, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->cumulativeDownloadSize:J

    sub-long v6, p1, v6

    iget-wide v8, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->remainingTimeInMillis:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->estimateDownloadRate(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->cumulativeDownloadSize:J

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->timestampInMillis:J

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->totalSize:J

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->downloadRate:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->remainingTimeInMillis:J

    :cond_1
    iget-wide p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->remainingTimeInMillis:J

    sub-long/2addr p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v0, 0x1f4

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private estimateDownloadRate(JJ)Z
    .locals 8

    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const-string p0, "interval is less than 100ms; wait for another sample"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    const-string p0, "sampleDownload size is zero; wait for another sample"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    return v1

    :cond_1
    div-long v4, p3, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "sample time: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "Byte sampleDownloadRate: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "kBps"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    iget-wide p2, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->downloadRate:J

    cmp-long p4, p2, v2

    if-nez p4, :cond_2

    const-string p2, "first sample, use it without smoothing"

    invoke-static {p2}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    iput-wide v4, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->downloadRate:J

    goto :goto_0

    :cond_2
    const/4 p4, 0x6

    shl-long v6, p2, p4

    sub-long/2addr v6, p2

    add-long/2addr v6, v4

    shr-long p2, v6, p4

    iput-wide p2, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->downloadRate:J

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "downloadRate: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->downloadRate:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    iget-wide p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->downloadRate:J

    cmp-long p0, p0, v2

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private getRemainingTimeInMillis()J
    .locals 4

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->remainingTimeInMillis:J

    const-wide/16 v2, 0x3e7

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private start(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->totalSize:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo$RemainingTimeEstimator;->timestampInMillis:J

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    return-void
.end method
