.class public Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RESTART_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MINUTE_IN_MILLIS:I

    int-to-long v0, v0

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->RESTART_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPostponeReasonIfNotNone(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;)V
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->NONE:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postponeReason : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->add(Ljava/lang/String;)V

    return-void
.end method

.method public static cancel()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;->stop()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeToAlarmInMillisFor()J
    .locals 6

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->alarmTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "postpone time has passed - set postpone time to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->RESTART_INTERVAL:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms later"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->alarmTime()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private static getTimeToAlarmInMillisWithin24hFor()J
    .locals 3

    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->alarmTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/idm/fotaagent/utils/EpochTime;->getNextWithin24h(II)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static restart(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->getTimeToAlarmInMillisFor()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLjava/lang/String;)V

    return-void
.end method

.method public static set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set for postpone type - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p3}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->addPostponeReasonIfNotNone(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;)V

    new-instance p3, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1, p2, p0, p4}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;->start(JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->setDBAndUpdateNotification(JLjava/lang/String;)V

    return-void
.end method

.method public static set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->NONE:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Ljava/lang/String;)V

    return-void
.end method

.method public static updateWithin24h(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->getTimeToAlarmInMillisWithin24hFor()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLjava/lang/String;)V

    return-void
.end method
