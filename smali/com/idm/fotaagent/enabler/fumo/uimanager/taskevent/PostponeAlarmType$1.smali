.class final enum Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$1;
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

.method private getRemainTimeToForceInstall()J
    .locals 4

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->scheduledInstallTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public postponeIfNeeded(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;)V
    .locals 2

    const-class p2, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->postponeType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "Already set timer for remind"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->shouldCountdown(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "auto install case, do not postpone"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;->Force:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-virtual {p3, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->installType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    move-result-object p3

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$1;->remainLessThan24Hours()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;

    invoke-direct {p2}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->scheduledInstallTime()J

    move-result-wide v0

    invoke-static {p2, v0, v1, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLjava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PeriodicRemind;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PeriodicRemind;-><init>()V

    sget-object p2, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    invoke-virtual {p2}, Lcom/idm/fotaagent/utils/EpochTime;->toMillis()J

    move-result-wide p2

    invoke-static {p0, p2, p3, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLjava/lang/String;)V

    return-void
.end method

.method public remainLessThan24Hours()Z
    .locals 4

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/PostponeAlarmType$1;->getRemainTimeToForceInstall()J

    move-result-wide v0

    sget p0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MILLIS:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
