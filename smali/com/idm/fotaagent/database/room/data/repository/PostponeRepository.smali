.class public Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Postpone"

.field private static final NAME_ALARM_TIME:Ljava/lang/String; = "alarmTime"

.field public static final NAME_AUTO_INSTALL:Ljava/lang/String; = "autoInstall"

.field private static final NAME_POSTPONE_COUNT:Ljava/lang/String; = "postponeCount"

.field private static final NAME_POSTPONE_TYPE:Ljava/lang/String; = "postponeType"

.field private static final NAME_SCHEDULED_INSTALL_TIME:Ljava/lang/String; = "scheduledInstallTime"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "Postpone"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->lambda$save$0(Ljava/util/HashMap;)V

    return-void
.end method

.method private getPostponeTypeName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeType()Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$save$0(Ljava/util/HashMap;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/i;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/i;-><init>(Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public alarmTime()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "alarmTime"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public autoInstall()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "autoInstall"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isNone()Z
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->getPostponeTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isScheduleForceOrPolicyWindowed()Z
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->getPostponeTypeName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PolicyWindowed;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->getPostponeTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWifiSetting()Z
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Download$WifiSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->getPostponeTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public postponeCount()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "postponeCount"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public postponeType()Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;-><init>()V

    const-string v1, "postponeType"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    return-object p0
.end method

.method public save(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LA/o;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduledInstallTime()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "scheduledInstallTime"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAutoInstall(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "autoInstall"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setPostponeCount(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "postponeCount"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setScheduledInstallTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "scheduledInstallTime"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method
