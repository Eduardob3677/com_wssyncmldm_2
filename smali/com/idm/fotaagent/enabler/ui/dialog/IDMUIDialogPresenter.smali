.class public Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;


# instance fields
.field private final model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

.field private final screenId:Ljava/lang/String;

.field private final view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;Lcom/idm/fotaagent/BundleWrapper;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getScreenId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->screenId:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->setPresenter(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p3, p4}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getDialogModel(Lcom/idm/fotaagent/BundleWrapper;Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LA2/a;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, LA2/a;-><init>(I)V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_1
    invoke-static {p3}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LA2/a;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, LA2/a;-><init>(I)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-virtual {p2}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, LA2/a;

    const/16 p3, 0x13

    invoke-direct {p2, p3}, LA2/a;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    throw p1
.end method


# virtual methods
.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->getMessage()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->screenId:Ljava/lang/String;

    return-object p0
.end method

.method public onCancel()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->onCancel()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->onDismiss()V

    return-void
.end method

.method public postInit()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    if-nez v0, :cond_0

    const-string v0, "model should not be null"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->getNeutralButtonStrategy()Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->setButtonOf(Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->getNegativeButtonStrategy()Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->setButtonOf(Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->getPositiveButtonStrategy()Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->setButtonOf(Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->preExecute()V

    return-void
.end method

.method public setCancelable()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->model:Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogPresenter;->view:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;->isCancelable()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;->setCancelable(Z)V

    return-void
.end method
