.class public Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "ServerTime"

.field private static final NAME_CLIENT_TIME_IN_SECOND:Ljava/lang/String; = "clientTimeInSecond"

.field private static final NAME_SERVER_TIME_IN_SECOND:Ljava/lang/String; = "serverTimeInSecond"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "ServerTime"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;->lambda$setTimes$0(J)V

    return-void
.end method

.method private synthetic lambda$setTimes$0(J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;->setServerTime(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->SECOND_IN_MILLIS:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;->setClientTime(J)V

    return-void
.end method

.method private setClientTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "clientTimeInSecond"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method private setServerTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "serverTimeInSecond"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method


# virtual methods
.method public getClientTimeInSecond()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "clientTimeInSecond"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerTimeInSecond()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "serverTimeInSecond"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setTimes(J)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/abupdate/manager/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/idm/fotaagent/abupdate/manager/c;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method
