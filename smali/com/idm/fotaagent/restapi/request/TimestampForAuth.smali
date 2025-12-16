.class public Lcom/idm/fotaagent/restapi/request/TimestampForAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VALUE_RANGE:J


# instance fields
.field private final context:Landroid/content/Context;

.field private final repository:Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_SECOND:I

    int-to-long v0, v0

    sput-wide v0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->VALUE_RANGE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->repository:Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->context:Landroid/content/Context;

    return-void
.end method

.method private withinRange(JJ)Z
    .locals 4

    sget-wide v0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->VALUE_RANGE:J

    add-long v2, p1, v0

    cmp-long p0, v2, p3

    if-ltz p0, :cond_1

    sub-long/2addr p1, v0

    cmp-long p0, p1, p3

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "Out of the 1 day range"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public calculateTimestamp()J
    .locals 8

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->repository:Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;->getServerTimeInSecond()J

    move-result-wide v0

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->repository:Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;->getClientTimeInSecond()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget v6, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->SECOND_IN_MILLIS:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->withinRange(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    sub-long/2addr v4, v2

    add-long/2addr v4, v0

    return-wide v4

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/restapi/exception/InvalidTimestampException;

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/exception/InvalidTimestampException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->repository:Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    return-void
.end method

.method public fetchTimestamp()V
    .locals 4

    const-string v0, "initializeResult/currentServerTime = "

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/time/TimeRestClient;

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/restapi/restclient/time/TimeRestClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->execute()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->getResponse()Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-virtual {v1}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object v1

    const-string v2, "initializeResult/currentServerTime"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->setTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/idm/fotaagent/restapi/exception/TimestampNotFetchedException;

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/exception/TimestampNotFetchedException;-><init>()V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->clear()V

    new-instance p0, Lcom/idm/fotaagent/restapi/exception/TimestampNotFetchedException;

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/exception/TimestampNotFetchedException;-><init>()V

    throw p0
.end method

.method public getTimestamp()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->calculateTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Lcom/idm/fotaagent/restapi/exception/InvalidTimestampException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->fetchTimestamp()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->calculateTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public setTimestamp(J)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/TimestampForAuth;->repository:Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;->setTimes(J)V

    return-void
.end method
