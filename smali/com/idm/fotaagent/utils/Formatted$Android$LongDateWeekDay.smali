.class Lcom/idm/fotaagent/utils/Formatted$Android$LongDateWeekDay;
.super Lcom/idm/fotaagent/utils/Formatted$Android;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/Formatted$Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongDateWeekDay"
.end annotation


# direct methods
.method private constructor <init>(JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/utils/Formatted$Android;-><init>(JLandroid/content/Context;Lcom/idm/fotaagent/utils/Formatted$1;)V

    return-void
.end method

.method public synthetic constructor <init>(JLandroid/content/Context;Lcom/idm/fotaagent/utils/Formatted$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/Formatted$Android$LongDateWeekDay;-><init>(JLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/utils/Formatted$Android;->context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/idm/fotaagent/utils/Formatted;->millis:J

    const/16 p0, 0x16

    invoke-static {v0, v1, v2, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
