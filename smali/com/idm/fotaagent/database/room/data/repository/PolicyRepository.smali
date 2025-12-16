.class public Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Policy"

.field public static final NAME_EXPIRED_TIME:Ljava/lang/String; = "expiredTime"

.field public static final NAME_OTA_VERSION:Ljava/lang/String; = "otaVersion"

.field public static final NAME_TYPE:Ljava/lang/String; = "type"

.field public static final VALUE_DEFAULT_TIME:J = -0x1L

.field public static final VALUE_DEFAULT_TYPE:I = -0x1

.field public static final VALUE_DEFAULT_VERSION:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "Policy"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->lambda$setVersionAndExpiredTime$0(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->lambda$clearVersionAndExpiredTime$1()V

    return-void
.end method

.method private synthetic lambda$clearVersionAndExpiredTime$1()V
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setOtaVersion(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setExpiredTime(J)V

    return-void
.end method

.method private synthetic lambda$setVersionAndExpiredTime$0(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setOtaVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setExpiredTime(J)V

    return-void
.end method


# virtual methods
.method public clearExpiredTime()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setExpiredTime(J)V

    return-void
.end method

.method public clearVersionAndExpiredTime()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/c;-><init>(Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getExpiredTime()J
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "expiredTime"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOtaVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "otaVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPolicyType()I
    .locals 2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isExpired()Z
    .locals 4

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->getExpiredTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setExpiredTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "expiredTime"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setOtaVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "otaVersion"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setPolicyType(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setVersionAndExpiredTime(Ljava/lang/String;J)V
    .locals 7

    new-instance v6, Lcom/idm/fotaagent/database/room/data/repository/e;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/database/room/data/repository/e;-><init>(Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;Ljava/lang/String;JI)V

    invoke-virtual {p0, v6}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method
