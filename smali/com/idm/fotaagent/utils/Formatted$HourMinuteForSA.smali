.class public Lcom/idm/fotaagent/utils/Formatted$HourMinuteForSA;
.super Lcom/idm/fotaagent/utils/Formatted;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/Formatted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourMinuteForSA"
.end annotation


# static fields
.field private static final FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HHmm"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/utils/Formatted$HourMinuteForSA;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/utils/Formatted;-><init>(JLcom/idm/fotaagent/utils/Formatted$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/utils/Formatted$HourMinuteForSA;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/utils/Formatted;->by(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
