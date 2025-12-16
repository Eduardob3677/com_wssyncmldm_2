.class public Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Automatic;,
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Postpone;,
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Pause;,
        Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Default;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->context:Landroid/content/Context;

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBehavior()Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->getOptionType()I

    move-result p0

    const-string v0, "InstallationOptionType : "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Default;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Default;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$1;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Pause;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Pause;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Postpone;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Postpone;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Automatic;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager$Automatic;-><init>()V

    return-object p0
.end method

.method public getOptionType()I
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getInstallationOption(Landroid/content/Context;J)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/FreezePeriods;->isFreezePeriod()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    const-string p0, "1. Inside of the FreezePeriod. Apply the postpone behavior"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getPolicyType(Landroid/content/Context;)I

    move-result v2

    const-string v4, "2. Outside of the FreezePeriod. Check out the policy : "

    invoke-static {v4, v2}, LB/f;->D(Ljava/lang/String;I)V

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->context:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->isExpired()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "2-1. Policy was already expired. Default behavior"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "2-2. Use a type of the InstallationOption as the behavior"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;->getType()I

    move-result v1

    :goto_1
    return v1
.end method

.method public isAutomaticBehavior()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->getOptionType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewVersion()Z
    .locals 4

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->getOtaVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pastFumoUpdateVersion : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentFumoUpdateVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setOtaVersion(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public restartPolicyTimerIfNeeded()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/FreezePeriods;->isFreezePeriod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;->isNewVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "New software version. restart timer"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->restart()V

    :cond_0
    return-void
.end method
