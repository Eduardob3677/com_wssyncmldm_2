.class public abstract Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByHeartbeat;,
        Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByPolling;,
        Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat$TriggeredByRegistration;
    }
.end annotation


# instance fields
.field private final now:Z

.field final periodInDay:I

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->url:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/idm/fotaagent/utils/GeneralUtils;->parseInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->periodInDay:I

    const-string p2, "1"

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->now:Z

    return-void
.end method


# virtual methods
.method public getNextHeartbeatTime(Z)J
    .locals 4

    iget v0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->periodInDay:I

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget v2, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MINUTE_IN_SECOND:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    iget-boolean v2, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->now:Z

    if-eqz v2, :cond_1

    const-string p0, "PeriodicHeartbeat DeviceInfo immediately"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->periodInDay:I

    if-eqz p1, :cond_2

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :cond_2
    const/4 p1, 0x5

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    sget p0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_HOUR:I

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const/16 p1, 0xb

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    sget p0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const/16 p1, 0xc

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public getPeriodInDay()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->periodInDay:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/PeriodicHeartbeat;->url:Ljava/lang/String;

    return-object p0
.end method
