.class public Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;
.super Landroidx/fragment/app/G;
.source "SourceFile"


# instance fields
.field private dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/G;-><init>()V

    return-void
.end method

.method private addDialogFragmentOf(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    const-string v1, "FRAGMENT_FOR_DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->createDialogFragmentOf(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    iput-object v2, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    :goto_0
    return-void
.end method

.method private createDialogFragmentOf(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_INSTALL_PLEASE_WAIT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    if-ne p1, p0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ProgressCircleDialog;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ProgressCircleDialog;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$MessageDialog;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$MessageDialog;-><init>()V

    return-object p0
.end method

.method private replaceDialogFragmentWith(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->createDialogFragmentOf(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/Z;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    const/4 p1, 0x0

    const-string v2, "FRAGMENT_FOR_DIALOG"

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p0, v2, v3}, Landroidx/fragment/app/a;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/a;->e(Z)I

    iput-boolean p1, v0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->allowsToFinish:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->put(Landroid/app/Activity;)V

    :try_start_0
    new-instance p1, Lcom/idm/fotaagent/BundleWrapper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/BundleWrapper;->getDialogType()Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->addDialogFragmentOf(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    invoke-direct {v1, v2, v0, p1, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->remove(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/fragment/app/G;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "EXTRA_KEY"

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v1}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/BundleWrapper;->getDialogType()Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Lcom/idm/fotaagent/BundleWrapper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v0}, Lcom/idm/fotaagent/BundleWrapper;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/idm/fotaagent/BundleWrapper;->getDialogType()Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    invoke-virtual {v3}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, v3}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->shouldReplace(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Landroid/app/AlertDialog;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "previous uidialog: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current uidialog: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldReplace: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->replaceDialogFragmentWith(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->dialogFragment:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    invoke-direct {p1, v1, v0, v2, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;Landroid/content/Context;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIActivityForDialog;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/G;->onResume()V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
