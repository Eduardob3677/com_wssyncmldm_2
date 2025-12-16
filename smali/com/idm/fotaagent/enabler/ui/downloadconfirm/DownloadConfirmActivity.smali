.class public Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithTwoButtons;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;


# instance fields
.field private presenter:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$Presenter;

.field private taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithTwoButtons;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonBindingModel()Lcom/idm/fotaagent/enabler/ui/common/viewmodel/BindingModel;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonBindingModel;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;->taskId:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonBindingModel;-><init>(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmButtonViewModel;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;->taskId:Ljava/lang/String;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;

    invoke-direct {v1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmPresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$Presenter;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$Presenter;

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$Presenter;->onCreate()V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$Download;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;->taskId:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$Download;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->create(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->getAppUpdateModel()Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;->taskId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    invoke-virtual {p0, v3}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setSubContent([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/G;->onResume()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/downloadconfirm/DownloadConfirmContractor$Presenter;->onResume()V

    return-void
.end method
