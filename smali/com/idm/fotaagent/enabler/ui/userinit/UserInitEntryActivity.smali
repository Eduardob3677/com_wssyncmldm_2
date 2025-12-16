.class public Lcom/idm/fotaagent/enabler/ui/userinit/UserInitEntryActivity;
.super Le/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/RebootChecker;->waitsReboot()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Since this application waits for reboot in order to complete installation, it should not perform anything"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const p1, 0x7f130022

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->put(Landroid/app/Activity;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByUser()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->finishEntryActivityIfExists()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->remove(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Le/n;->onDestroy()V

    return-void
.end method
