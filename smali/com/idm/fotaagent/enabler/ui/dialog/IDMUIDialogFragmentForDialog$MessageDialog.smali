.class public Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$MessageDialog;
.super Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDialog"
.end annotation


# instance fields
.field private message:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$MessageDialog;->message:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/r;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog$MessageDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
