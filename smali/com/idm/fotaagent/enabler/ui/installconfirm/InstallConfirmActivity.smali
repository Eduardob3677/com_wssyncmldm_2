.class public Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;
.implements Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;


# static fields
.field private static final TAG_INSTALL_POSTPONE_DIALOG:Ljava/lang/String; = "InstallPostponeDialog"


# instance fields
.field private presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;-><init>()V

    return-void
.end method

.method private dismissPostponeDialogIfExists()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    const-string v0, "InstallPostponeDialog"

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

.method private synthetic lambda$setListeners$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    const-string p2, "InstallPostponeDialog"

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "postpone dialog not found"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    check-cast p0, Landroidx/fragment/app/r;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "failed to apply semSetAnchor(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->lambda$setListeners$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;

    invoke-direct {v1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmPresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;->onCreate()V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$Install;

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$Install;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->create(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->getAppUpdateModel()Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;

    invoke-direct {v3, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;-><init>()V

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v1, v4, p1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    const/4 p1, 0x4

    aput-object v0, v4, p1

    invoke-virtual {p0, v4}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setSubContent([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

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

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Le/n;->onStart()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Le/n;->onStop()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;->onStop()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->isLcdOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->dismissPostponeDialogIfExists()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;->onResume()V

    return-void
.end method

.method public setListeners()V
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;-><init>(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;I)V

    invoke-direct {v1, v3}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/installconfirm/b;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/b;-><init>(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btHighEmphasis:Landroid/widget/Button;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmActivity;->presenter:Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/idm/fotaagent/enabler/ui/installconfirm/a;-><init>(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$Presenter;I)V

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;-><init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startPostponeDialog(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    const-string v1, "InstallPostponeDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;->btMediumEmphasis:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->newInstance(Ljava/lang/String;I)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
