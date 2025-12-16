.class public Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ProgressCircleDialog;
.super Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressCircleDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0023

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;-><init>(I)V

    return-void
.end method


# virtual methods
.method public doInflateViews()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->rootView:Landroid/view/View;

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;->tvMainDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method
