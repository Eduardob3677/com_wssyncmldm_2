.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/OptimizeState;
.super Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;
.source "SourceFile"


# static fields
.field static final WEIGHT_OPTIMIZE:D = 0.09999999999999998


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;-><init>()V

    return-void
.end method


# virtual methods
.method public convertPercent(I)I
    .locals 2

    int-to-double p0, p1

    const-wide v0, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double/2addr p0, v0

    const-wide v0, 0x4056800000000000L    # 90.0

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getActiveMainTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveNotificationTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveProgressViewTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInactiveProgressViewTitleForOnExit()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInactiveProgressViewTitleForPause()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f1300ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->OPTIMIZING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    return-object p0
.end method

.method public restore(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->DOWNLOADING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->VERIFYING:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->restore(Ljava/util/function/Consumer;Ljava/util/function/Consumer;[Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)V

    return-void
.end method
