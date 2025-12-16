.class public abstract Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;
.super Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewDialog"
.end annotation


# instance fields
.field private final layoutId:I

.field tvMainDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;-><init>()V

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;->layoutId:I

    return-void
.end method


# virtual methods
.method public abstract doInflateViews()V
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;->tvMainDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public inflateViews()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->rootView:Landroid/view/View;

    iget v2, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;->layoutId:I

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;->doInflateViews()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;->inflateViews()V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$ViewDialog;->tvMainDescription:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
