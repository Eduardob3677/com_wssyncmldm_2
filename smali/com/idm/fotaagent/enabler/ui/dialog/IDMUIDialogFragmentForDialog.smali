.class public abstract Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;
.super Landroidx/fragment/app/r;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ProgressCircleDialog;,
        Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;,
        Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$MessageDialog;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FRAGMENT_FOR_DIALOG"


# instance fields
.field allowsToFinish:Z

.field private presenter:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;

.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->allowsToFinish:Z

    return-void
.end method

.method public static synthetic g(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->lambda$setButtonOf$0(Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$setButtonOf$0(Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;

    invoke-interface {p1, p2, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;->onClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v0

    iget-boolean p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->allowsToFinish:Z

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->allowsToFinish(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public abstract getMessage()Ljava/lang/CharSequence;
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;->onCancel()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;->postInit()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;

    invoke-interface {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;->setCancelable()V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;->onDismiss()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->finish()V

    return-void
.end method

.method public setButtonOf(Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;)V
    .locals 5

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;->getText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public abstract setMessage(Ljava/lang/CharSequence;)V
.end method

.method public setPresenter(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
