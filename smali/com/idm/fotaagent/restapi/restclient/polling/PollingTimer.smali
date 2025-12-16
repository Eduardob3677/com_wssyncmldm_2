.class public Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->context:Landroid/content/Context;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->repository:Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    return-void
.end method

.method private getFirstPollingTimeWithDm()J
    .locals 2

    const-string p0, "Software update initiated after registration. set polling time by PollingInfo"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->getNextPollingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFirstPollingTimeWithoutDm()J
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->existsFirstTime()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "set the first polling time by DeviceRegistration"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->getFirstTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "polling is performed immediately"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public registerFirstPolling(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->getFirstPollingTimeWithDm()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->getFirstPollingTimeWithoutDm()J

    move-result-wide v0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "First polling Time:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->repository:Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-virtual {p1, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->setNextTime(J)V

    iget-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->repository:Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->clearFirstTime()V

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->startPollingTimer(J)V

    return-void
.end method

.method public registerNextPolling()V
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->getNextPollingTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Next polling Time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->repository:Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-virtual {v2, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->setNextTime(J)V

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->startPollingTimer(J)V

    return-void
.end method

.method public restartPolling()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->repository:Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->getNextTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->startPollingTimer(J)V

    return-void
.end method

.method public startPollingTimer(J)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "polling time is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " and current time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "polling time is passed. start polling alarm after 1 min"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    sget p1, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MINUTE_IN_MILLIS:I

    int-to-long p1, p1

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->repository:Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-virtual {v0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->setNextTime(J)V

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->context:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_1

    const-string p0, "AlarmManager is null!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->POLLING:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x0

    const-wide/32 v5, 0x36ee80

    move-wide v3, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Start polling timer: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;

    invoke-direct {v0, p1, p2}, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->D(Ljava/lang/Object;)V

    return-void
.end method

.method public stopPolling()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->context:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string p0, "AlarmManager is null!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "stop polling"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object v1, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->POLLING:Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/polling/PollingTimer;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method
