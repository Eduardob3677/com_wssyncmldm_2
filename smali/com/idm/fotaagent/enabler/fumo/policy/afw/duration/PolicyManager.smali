.class public Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyIfPolicyChanged()V
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->getPolicyType()I

    move-result v2

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getPolicyType(Landroid/content/Context;)I

    move-result v0

    if-ne v2, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " policy is same as before. Do not anything."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "policy type changed from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->setPolicyType(I)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->getPolicyType()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->doApply()V

    return-void
.end method

.method public static expire()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->getPolicyType()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->getTimer()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->expire()V

    return-void
.end method

.method public static getPolicyType()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->create()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;

    move-result-object v0

    return-object v0
.end method

.method public static promptInstallAfterTimerExpired()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->getPolicyType()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->promptInstallAfterTimerExpired()V

    return-void
.end method

.method public static restart()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->getPolicyType()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->getTimer()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->restart()V

    return-void
.end method

.method public static start()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->getPolicyType()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->getTimer()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->start()V

    return-void
.end method

.method public static stop()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->getPolicyType()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;->getTimer()Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;->stop()V

    return-void
.end method
