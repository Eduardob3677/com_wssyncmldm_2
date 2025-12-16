.class public Lcom/idm/fotaagent/restapi/registration/DeviceRegistrationReportChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REPORT_INTERVAL_IN_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MILLIS:I

    int-to-long v0, v0

    sput-wide v0, Lcom/idm/fotaagent/restapi/registration/DeviceRegistrationReportChecker;->REPORT_INTERVAL_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isAvailableToReport(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "it\'s allowed to report since the interval is greater than 1 day. errorCode : "

    const-string v1, "it\'s allowed to report for different errorCode - "

    const-class v2, Lcom/idm/fotaagent/restapi/registration/DeviceRegistrationReportChecker;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-direct {v3, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->getDeviceRegistrationErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x1

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->getDeviceRegistrationReportTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sget-wide v7, Lcom/idm/fotaagent/restapi/registration/DeviceRegistrationReportChecker;->REPORT_INTERVAL_IN_MILLIS:J

    cmp-long p0, v5, v7

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v4

    :cond_1
    :try_start_2
    const-string p0, "ignore reporting"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v2

    throw p0
.end method

.method public static declared-synchronized storeReportInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/idm/fotaagent/restapi/registration/DeviceRegistrationReportChecker;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->setDeviceRegistrationReportInfo(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
