.class public Lcom/idm/fotaagent/enabler/fumo/policy/afw/FreezePeriods;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Ljava/time/MonthDay;Landroid/app/admin/FreezePeriod;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object p1

    invoke-virtual {p0, v0}, Ljava/time/MonthDay;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Ljava/time/MonthDay;->isBefore(Ljava/time/MonthDay;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/time/MonthDay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/time/MonthDay;->isAfter(Ljava/time/MonthDay;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->isBefore(Ljava/time/MonthDay;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Ljava/time/MonthDay;->isAfter(Ljava/time/MonthDay;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->isBefore(Ljava/time/MonthDay;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :cond_6
    :goto_2
    return v2
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static isFreezePeriod()Z
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/FreezePeriods;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getFreezePeriod(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const/16 v3, 0x7d1

    invoke-virtual {v1, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v3

    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    invoke-static {v1, v3}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/FreezePeriods;->contains(Ljava/time/MonthDay;Landroid/app/admin/FreezePeriod;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method
