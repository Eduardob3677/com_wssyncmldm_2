.class public Lcom/idm/fotaagent/receiver/callback/updateresult/ReportResultLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStatusIfNeeded(Landroid/content/Context;Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;)V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isReportFumoStatus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isUpdatingFumoStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getReportResult()I

    move-result p0

    invoke-virtual {p1}, Lcom/idm/fotaagent/receiver/callback/updateresult/ReportStatus;->toValue()B

    move-result v1

    or-int/2addr v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prevStatus : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", status : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", newStatus : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setReportResult(I)V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->getReportResult()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "status"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "00190"

    invoke-static {p0, v0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
