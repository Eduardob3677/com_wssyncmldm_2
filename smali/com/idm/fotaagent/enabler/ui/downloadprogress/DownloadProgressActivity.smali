.class public Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithProgressBar;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$View;


# instance fields
.field private presenter:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons$WithProgressBar;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonLayoutId()I
    .locals 0

    const p0, 0x7f0d0062

    return p0
.end method

.method public getMainContentLayoutId()I
    .locals 0

    const p0, 0x7f0d002d

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressPresenter;

    invoke-direct {v1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressPresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;->onCreate()V

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
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/G;->onResume()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;->onResume()V

    return-void
.end method

.method public setListeners()V
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LA2/b;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2}, LA2/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v3}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LA2/b;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, LA2/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
