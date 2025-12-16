.class public abstract Lcom/idm/fotaagent/utils/Formatted$Android;
.super Lcom/idm/fotaagent/utils/Formatted;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/Formatted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/utils/Formatted$Android$LongDate;,
        Lcom/idm/fotaagent/utils/Formatted$Android$Time;,
        Lcom/idm/fotaagent/utils/Formatted$Android$LongDateWeekDay;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/utils/Formatted;-><init>(JLcom/idm/fotaagent/utils/Formatted$1;)V

    iput-object p3, p0, Lcom/idm/fotaagent/utils/Formatted$Android;->context:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(JLandroid/content/Context;Lcom/idm/fotaagent/utils/Formatted$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/Formatted$Android;-><init>(JLandroid/content/Context;)V

    return-void
.end method

.method public static longDateAndTime(JILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateAndTime(JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static longDateAndTime(JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/utils/Formatted$Android$LongDate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/idm/fotaagent/utils/Formatted$Android$LongDate;-><init>(JLandroid/content/Context;Lcom/idm/fotaagent/utils/Formatted$1;)V

    new-instance v2, Lcom/idm/fotaagent/utils/Formatted$Android$Time;

    invoke-direct {v2, p0, p1, p3, v1}, Lcom/idm/fotaagent/utils/Formatted$Android$Time;-><init>(JLandroid/content/Context;Lcom/idm/fotaagent/utils/Formatted$1;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static longDateWeekDayAndTime(JILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateWeekDayAndTime(JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static longDateWeekDayAndTime(JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/utils/Formatted$Android$LongDateWeekDay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/idm/fotaagent/utils/Formatted$Android$LongDateWeekDay;-><init>(JLandroid/content/Context;Lcom/idm/fotaagent/utils/Formatted$1;)V

    new-instance v2, Lcom/idm/fotaagent/utils/Formatted$Android$Time;

    invoke-direct {v2, p0, p1, p3, v1}, Lcom/idm/fotaagent/utils/Formatted$Android$Time;-><init>(JLandroid/content/Context;Lcom/idm/fotaagent/utils/Formatted$1;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
