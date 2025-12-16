.class public Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;
.implements Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/PauseConfirmDialog$PauseListener;


# static fields
.field private static final TAG_PAUSE_CONFIRM_DIALOG:Ljava/lang/String; = "PauseConfirmDialog"


# instance fields
.field private presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonLayoutId()I
    .locals 0

    const p0, 0x7f0d0062

    return p0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/w;
    .locals 0

    return-object p0
.end method

.method public getMainContentLayoutId()I
    .locals 0

    const p0, 0x7f0d002d

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->onConfigurationChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;

    invoke-direct {v1, p0, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressPresenter;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithTwoProgressBars;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-interface {p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->onCreate()V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->create(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->getAppUpdateModel()Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;

    invoke-direct {v2, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    aput-object v2, v0, p1

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setSubContent([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/G;->onResume()V

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Le/n;->onStart()V

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Le/n;->onStop()V

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->onStop()V

    return-void
.end method

.method public pauseIfPossible()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;->pauseIfPossible()V

    return-void
.end method

.method public setListeners()V
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    iget-object v2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;I)V

    invoke-direct {v1, v3}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressActivity;->presenter:Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/a;-><init>(Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/DownloadAndInstallProgressContractor$Presenter;I)V

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showPauseBlockToast()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130022

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showPauseConfirmDialog()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    const-string v0, "PauseConfirmDialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/PauseConfirmDialog;

    invoke-direct {v1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/downloadandinstallprogress/PauseConfirmDialog;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
