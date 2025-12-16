.class public Lcom/samsung/android/fotaagent/common/util/TimeConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DAY_IN_HOUR:I

.field public static final DAY_IN_MILLIS:I

.field public static final DAY_IN_MINUTE:I

.field public static final DAY_IN_SECOND:I

.field public static final HOUR_IN_MILLIS:I

.field public static final HOUR_IN_MINUTE:I

.field public static final HOUR_IN_SECOND:I

.field public static final MILLIS_IN_NANOS:I

.field public static final MINUTE_IN_MILLIS:I

.field public static final MINUTE_IN_SECOND:I

.field public static final SECOND_IN_MILLIS:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MILLIS_IN_NANOS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->SECOND_IN_MILLIS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MINUTE_IN_SECOND:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->MINUTE_IN_MILLIS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MINUTE:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_SECOND:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->HOUR_IN_MILLIS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_HOUR:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MINUTE:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_SECOND:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->DAY_IN_MILLIS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
