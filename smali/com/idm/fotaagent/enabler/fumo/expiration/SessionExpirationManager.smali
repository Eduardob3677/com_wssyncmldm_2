.class public Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_SCHEDULED_TIME:Ljava/lang/String; = "SCHEDULEDTIME"

.field static final KEY_TASKID:Ljava/lang/String; = "TASKID"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildJobInfo(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)Landroid/app/job/JobInfo;
    .locals 5

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "TASKID"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getLatencyInMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SCHEDULEDTIME"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getJobId()I

    move-result v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getServiceClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getLatencyInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2

    const-string v0, "cancel expiration timers"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    const-string p0, "JobScheduler is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_NOTIFY:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setExpirationNotify(Z)V

    return-void
.end method

.method public static reschedule(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reschedule expiration : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->schedule(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)V

    return-void
.end method

.method public static schedule(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "schedule expiration timers"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    const-string p0, "JobScheduler is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_NOTIFY:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-static {p0, p1, v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->schedule(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)V

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-static {p0, p1, v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->schedule(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)V

    return-void
.end method

.method public static schedule(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "schedule expiration timers for : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    const-string p0, "JobScheduler is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->buildJobInfo(Landroid/content/Context;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;)Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "SUCCESS"

    goto :goto_0

    :cond_1
    const-string p0, "FAIL"

    :goto_0
    const-string p1, "schedule - "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
