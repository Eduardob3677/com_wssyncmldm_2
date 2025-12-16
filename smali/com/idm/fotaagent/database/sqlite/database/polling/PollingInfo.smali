.class public Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PERIOD_DAY:I = 0x7

.field public static final DEFAULT_PERIOD_RANGE:I = 0x3

.field public static final DEFAULT_PERIOD_TIME:I = 0xc

.field private static final INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

.field private static final INVALID_VALUE:I = -0x1

.field public static final PERIOD_UNIT_DAY:Ljava/lang/String; = "day"

.field public static final PERIOD_UNIT_HOUR:Ljava/lang/String; = "hour"

.field public static final PERIOD_UNIT_MIN:Ljava/lang/String; = "min"

.field public static final URL:Ljava/lang/String; = "https://fota-cloud-dn.ospserver.net/firmware/"

.field private static final VERSION_TARGET_REAL:Ljava/lang/String; = "version.xml"

.field private static final VERSION_TARGET_TEST:Ljava/lang/String; = "version.test.xml"


# instance fields
.field private periodChangedInDayUnit:Z

.field private urlChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->periodChangedInDayUnit:Z

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;

    return-object v0
.end method

.method private parse(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getNextPollingTime()J
    .locals 10

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getPeriod()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "period is zero."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v1, ""

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getPeriodUnit()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getTime()I

    move-result v2

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getRange()I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v5, "hour"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xb

    if-eqz v5, :cond_1

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    :cond_1
    const-string v5, "min"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v5, 0xc

    if-eqz v1, :cond_2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-boolean v7, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->periodChangedInDayUnit:Z

    const/4 v8, 0x0

    const/4 v9, 0x5

    if-nez v7, :cond_4

    iget-boolean p0, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->urlChanged:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_4
    :goto_0
    if-lez v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    goto :goto_1

    :cond_5
    move p0, v8

    :goto_1
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v4, v9, p0}, Ljava/util/Calendar;->add(II)V

    :goto_2
    if-lez v3, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    :cond_6
    add-int/2addr v2, v8

    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->set(II)V

    sget p0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-virtual {v4, v5, p0}, Ljava/util/Calendar;->set(II)V

    sget p0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MINUTE_IN_SECOND:I

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const/16 v0, 0xd

    invoke-virtual {v4, v0, p0}, Ljava/util/Calendar;->set(II)V

    :goto_3
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTarget(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "version.xml"

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setPollingPeriodInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "day"

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->parse(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getTime()I

    move-result v0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getRange()I

    move-result v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p3}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->parse(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p4}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->parse(Ljava/lang/String;)I

    move-result v2

    :cond_1
    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-eq v0, p3, :cond_4

    if-ne v2, p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object p3

    invoke-virtual {p3}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getPeriod()I

    move-result p3

    if-eq p2, p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->periodChangedInDayUnit:Z

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->setPollingPeriodInfo(Ljava/lang/String;III)V

    return-void

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "invalid values : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public setTarget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "polling file Name: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/database/room/data/repository/PollingRepository;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "url should not be empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->urlChanged:Z

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfo;->getTarget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Period = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getPeriod()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->getPeriodUnit()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
