.class final enum Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus$7;
.super Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Lcom/idm/fotaagent/enabler/fumo/IdleChecker$1;)V

    return-void
.end method


# virtual methods
.method public runs(Landroid/content/Context;)Z
    .locals 6

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    const/16 v0, 0x32

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const-string p0, "fumoStatus is not IDM_DL_STATE_READY_TO_UPDATE"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string p0, "alarm"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    if-nez p0, :cond_1

    const-string p0, "AlarmManager is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "alarm clock is not set"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, p0, v2

    if-gez v0, :cond_3

    const-string p0, "alarm clock time was passed"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p0, v2

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MINUTE_IN_MILLIS:I

    int-to-long v2, v0

    const-wide/16 v4, 0x1e

    mul-long/2addr v2, v4

    cmp-long p0, p0, v2

    if-gtz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isAlarmClockSetWithin30Mins : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v1
.end method
