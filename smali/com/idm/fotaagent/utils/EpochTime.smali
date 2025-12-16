.class public abstract enum Lcom/idm/fotaagent/utils/EpochTime;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/utils/EpochTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/utils/EpochTime;

.field public static final enum DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

.field public static final enum HOUR_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

.field public static final enum HOUR_3_LATER:Lcom/idm/fotaagent/utils/EpochTime;

.field public static final enum MINUTE_30_LATER:Lcom/idm/fotaagent/utils/EpochTime;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/utils/EpochTime;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/utils/EpochTime;->MINUTE_30_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    sget-object v1, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    sget-object v2, Lcom/idm/fotaagent/utils/EpochTime;->HOUR_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    sget-object v3, Lcom/idm/fotaagent/utils/EpochTime;->HOUR_3_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/fotaagent/utils/EpochTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/utils/EpochTime$1;

    const-string v1, "MINUTE_30_LATER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/EpochTime$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/utils/EpochTime;->MINUTE_30_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    new-instance v0, Lcom/idm/fotaagent/utils/EpochTime$2;

    const-string v1, "DAY_1_LATER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/EpochTime$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    new-instance v0, Lcom/idm/fotaagent/utils/EpochTime$3;

    const-string v1, "HOUR_1_LATER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/EpochTime$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/utils/EpochTime;->HOUR_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    new-instance v0, Lcom/idm/fotaagent/utils/EpochTime$4;

    const-string v1, "HOUR_3_LATER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/utils/EpochTime$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/utils/EpochTime;->HOUR_3_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    invoke-static {}, Lcom/idm/fotaagent/utils/EpochTime;->$values()[Lcom/idm/fotaagent/utils/EpochTime;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/utils/EpochTime;->$VALUES:[Lcom/idm/fotaagent/utils/EpochTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/utils/EpochTime$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/utils/EpochTime;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static checkHourOfDay(I)V
    .locals 1

    if-ltz p0, :cond_0

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_HOUR:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hour of day should be [0, 24)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkMinuteOfDay(I)V
    .locals 1

    if-ltz p0, :cond_0

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MINUTE:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "minute of day should be [0, 1440)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkMinuteOfHour(I)V
    .locals 1

    if-ltz p0, :cond_0

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "minute of hour should be [0, 60)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNextRandomlyBetween(II)Ljava/util/Calendar;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfDay(I)V

    invoke-static {p1}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfDay(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p0, p1, :cond_0

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MINUTE:I

    add-int/2addr p1, v0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    sget p0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MINUTE:I

    rem-int/2addr p1, p0

    sget p0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    div-int v0, p1, p0

    rem-int/2addr p1, p0

    invoke-static {v0, p1}, Lcom/idm/fotaagent/utils/EpochTime;->getNextWithin24h(II)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static getNextRandomlyBetween(IIII)Ljava/util/Calendar;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/utils/EpochTime;->checkHourOfDay(I)V

    invoke-static {p1}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfHour(I)V

    invoke-static {p2}, Lcom/idm/fotaagent/utils/EpochTime;->checkHourOfDay(I)V

    invoke-static {p3}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfHour(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    mul-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-static {p0, p2}, Lcom/idm/fotaagent/utils/EpochTime;->getNextRandomlyBetween(II)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static getNextWithin24h(II)Ljava/util/Calendar;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/utils/EpochTime;->checkHourOfDay(I)V

    invoke-static {p1}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfHour(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    new-instance p0, Ljava/util/Calendar$Builder;

    invoke-direct {p0}, Ljava/util/Calendar$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/utils/EpochTime;->DAY_1_LATER:Lcom/idm/fotaagent/utils/EpochTime;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/EpochTime;->applyTo(Ljava/util/Calendar;)Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;-><init>(J)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/utils/Formatted$DateTimeForLog;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static isBetween(Ljava/util/Calendar;II)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfDay(I)V

    invoke-static {p2}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfDay(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget v1, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    mul-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v0

    const-string v0, "currentMin: "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_2

    if-ge p0, p1, :cond_1

    if-gt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-lt p0, p1, :cond_3

    if-gt p0, p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static isBetween(Ljava/util/Calendar;IIII)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/idm/fotaagent/utils/EpochTime;->checkHourOfDay(I)V

    invoke-static {p2}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfHour(I)V

    invoke-static {p3}, Lcom/idm/fotaagent/utils/EpochTime;->checkHourOfDay(I)V

    invoke-static {p4}, Lcom/idm/fotaagent/utils/EpochTime;->checkMinuteOfHour(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    mul-int/2addr p3, v0

    add-int/2addr p3, p4

    invoke-static {p0, p1, p3}, Lcom/idm/fotaagent/utils/EpochTime;->isBetween(Ljava/util/Calendar;II)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static isCurrentTimeBetween(II)Z
    .locals 3

    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/idm/fotaagent/utils/EpochTime;->isBetween(Ljava/util/Calendar;II)Z

    move-result p0

    return p0
.end method

.method public static isCurrentTimeBetween(IIII)Z
    .locals 3

    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/EpochTime;->isBetween(Ljava/util/Calendar;IIII)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/utils/EpochTime;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/utils/EpochTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/utils/EpochTime;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/utils/EpochTime;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/utils/EpochTime;->$VALUES:[Lcom/idm/fotaagent/utils/EpochTime;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/utils/EpochTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/utils/EpochTime;

    return-object v0
.end method


# virtual methods
.method public abstract applyTo(Ljava/util/Calendar;)Ljava/util/Calendar;
.end method

.method public toMillis()J
    .locals 3

    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/EpochTime;->applyTo(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
