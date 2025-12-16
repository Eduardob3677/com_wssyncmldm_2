.class final enum Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$3;
.super Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$1;)V

    return-void
.end method

.method private isScheduledTimeAndAlreadyPassed(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->isAlreadyScheduled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "not scheduled"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->scheduledInstallTime()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p0, p0, v1

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public postponeIfNeeded(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$3;->isScheduledTimeAndAlreadyPassed(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;-><init>()V

    sget-object p2, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    invoke-virtual {p2}, Lcom/idm/fotaagent/utils/EpochTime;->toMillis()J

    move-result-wide p2

    invoke-static {p0, p2, p3, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
