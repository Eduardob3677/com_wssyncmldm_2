.class public Lcom/idm/fotaagent/enabler/ui/reschedulepostpone/ReschedulePostponeActivity;
.super Le/n;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;


# static fields
.field public static final TAG_RESCHEDULE_POSTPONE_DIALOG:Ljava/lang/String; = "ReschedulePostponeDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/n;-><init>()V

    return-void
.end method

.method private dismissPostponeDialogIfExists()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    const-string v0, "ReschedulePostponeDialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private isLcdOn()Z
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    const-string v0, "ReschedulePostponeDialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->newInstance(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Le/n;->onStop()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/reschedulepostpone/ReschedulePostponeActivity;->isLcdOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/reschedulepostpone/ReschedulePostponeActivity;->dismissPostponeDialogIfExists()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method
