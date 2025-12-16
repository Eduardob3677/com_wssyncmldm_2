.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/IdleState;
.super Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveMainTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f13008a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveNotificationTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/stateMachine/UpdateState;->context:Landroid/content/Context;

    const v0, 0x7f130089

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActiveProgressViewTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInactiveProgressViewTitleForOnExit()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInactiveProgressViewTitleForPause()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatus()Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->IDLE:Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    return-object p0
.end method
