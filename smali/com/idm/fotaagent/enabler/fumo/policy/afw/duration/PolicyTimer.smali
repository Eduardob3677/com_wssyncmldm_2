.class abstract Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoNotRestart;,
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoRestart;
    }
.end annotation


# static fields
.field static final POSTPONE_DURATION_IN_DAY:I = 0x1e


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->lambda$stop$0(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V

    return-void
.end method

.method private static synthetic lambda$stop$0(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public calculateValidTime()J
    .locals 2

    const-string p0, "Calculate valid policy time"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public expire()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->clearExpiredTime()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->stop()V

    return-void
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    const-class v2, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyExpirationReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0xc000000

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public abstract restart()V
.end method

.method public start()V
    .locals 9

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Policy was expired."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AlarmManager;

    if-nez v2, :cond_1

    const-string p0, "AlarmManager is null!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->getExpiredTime()J

    move-result-wide v0

    const-wide/32 v6, 0x2932e00

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    const/4 v3, 0x1

    move-wide v4, v0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Start system policy expired timer: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;

    invoke-direct {v2, v0, v1}, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->context:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/a;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/a;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const-string p0, "Cancel Policy Timer"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
